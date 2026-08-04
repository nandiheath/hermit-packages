description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.3.1" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Darwin_arm64.tar.gz": "553b241a2dd58a727328bd461d92d42e042513b70c68af332ebbcf01396cbaea",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Linux_arm64.tar.gz": "978a4264a045288492ceea2d2fc48bf0a3d504160d76cfe8c761bf192ad5efc0",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Linux_amd64.tar.gz": "b2a6ff4c22d592029e074b2546a3bcfdd53410fb772803ddc54b566a059e80ee",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Darwin_amd64.tar.gz": "c2608c166ee459e088f6be509eca67ce5aa3526fc7af03c78eba2ac8a838991c",
}
