description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.3.0" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Linux_arm64.tar.gz": "61bdc08f5a6f2f494a3ac0db58a69f9654648399622b61e3810aaba33277435e",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Linux_amd64.tar.gz": "bb5b24d1c1a680ddd3e9814a8ad48153a86fd3b4ae37634e181c553f7cfc09e9",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Darwin_amd64.tar.gz": "ce13294ee2f4ec058dcc069a24b2f680e5f9e3c69c12636315feab02bf95f062",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Darwin_arm64.tar.gz": "966386db9b2281c31065deb7df2368d0e9a5308501d68b6537495c96260bf48d",
}
