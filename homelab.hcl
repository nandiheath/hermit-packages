description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.5.0" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Linux_amd64.tar.gz": "c7eefb6b7174081fdbbb283e156c141e737917e019013ac8a52d3334de524f12",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Darwin_amd64.tar.gz": "523cf2f0a44d34602026ef644b973b1eac81cd5317087357e81f2396b561a0f4",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Darwin_arm64.tar.gz": "0588bdd2c49436ec663e60477132f71f8156246267a9822613c877c2bc5ba9e8",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Linux_arm64.tar.gz": "ebd4f65361de442647d5dbbd690045c3a1f7a23423a713acddc293ae138b25ca",
}
