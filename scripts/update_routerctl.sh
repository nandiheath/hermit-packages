#!/bin/sh
set -eu

SOURCE_REPOSITORY=${SOURCE_REPOSITORY:?SOURCE_REPOSITORY is required}
TAG=${TAG:?TAG is required}
VERSION=${VERSION:?VERSION is required}
RELEASE_ID=${RELEASE_ID:?RELEASE_ID is required}
RELEASE_URL=${RELEASE_URL:?RELEASE_URL is required}

if [ "$SOURCE_REPOSITORY" != "nandiheath/homelab-cli" ]; then
  echo "unexpected source repository: $SOURCE_REPOSITORY" >&2
  exit 1
fi
case "$VERSION" in
  *[!0-9.]* | *.*.*.* | .* | *.)
    echo "VERSION must be strict SemVer without a v prefix: $VERSION" >&2
    exit 1
    ;;
esac
if ! printf '%s\n' "$VERSION" | grep -Eq '^(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$'; then
  echo "VERSION must be strict SemVer without a v prefix: $VERSION" >&2
  exit 1
fi
if [ "$TAG" != "v$VERSION" ]; then
  echo "TAG must equal vVERSION" >&2
  exit 1
fi

required_assets="
routerctl_${VERSION}_Darwin_amd64.tar.gz
routerctl_${VERSION}_Darwin_arm64.tar.gz
routerctl_${VERSION}_Linux_amd64.tar.gz
routerctl_${VERSION}_Linux_arm64.tar.gz
checksums.txt
"
release_assets=$(gh release view "$TAG" --repo "$SOURCE_REPOSITORY" --json assets --jq '.assets[].name')
for asset in $required_assets; do
  if ! printf '%s\n' "$release_assets" | grep -Fx "$asset" >/dev/null; then
    echo "release $TAG is missing required asset: $asset" >&2
    exit 1
  fi
done

if [ ! -f routerctl.hcl ]; then
  cat >routerctl.hcl <<EOF
 description = "Pinned-SSH OpenWrt router controller"
 binaries = ["routerctl"]
 test = "routerctl version"

 platform "darwin" {
   source = "https://github.com/nandiheath/homelab-cli/releases/download/v\${version}/routerctl_\${version}_Darwin_\${arch}.tar.gz"
 }

 platform "linux" {
   source = "https://github.com/nandiheath/homelab-cli/releases/download/v\${version}/routerctl_\${version}_Linux_\${arch}.tar.gz"
 }

 version "$VERSION" {
   auto-version {
     github-release = "nandiheath/homelab-cli"
   }
 }

 sha256sums = {}
EOF
fi

./bin/hermit manifest auto-version --update-digests routerctl.hcl
if ! grep -F "version \"$VERSION\"" routerctl.hcl >/dev/null; then
  echo "routerctl manifest does not contain version $VERSION" >&2
  exit 1
fi
version_urls=$(grep -c "routerctl_${VERSION}_" routerctl.hcl || true)
if [ "$version_urls" -ne 4 ]; then
  echo "routerctl manifest must contain exactly four release URLs for $VERSION" >&2
  exit 1
fi
./bin/hermit validate source "file://$PWD"
