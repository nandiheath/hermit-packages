description = "Pinned-SSH OpenWrt router controller"
binaries = ["routerctl"]
test = "routerctl version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/routerctl_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/routerctl_${version}_Linux_${arch}.tar.gz"
}

version "0.2.0" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.2.0/routerctl_0.2.0_Linux_amd64.tar.gz": "6e675fc5bafc41b90f5b06fa2b3de1c41425a372ec01bb940e48d7239bcb8044",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.2.0/routerctl_0.2.0_Darwin_amd64.tar.gz": "54cd785fd488693ac57bb149bae1ad85be6401e463bfdc81bcc5eb0bb4e78af7",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.2.0/routerctl_0.2.0_Darwin_arm64.tar.gz": "aa2cf69cbfde9c4ad3e6f0bfb4a6fbaf0addd828a207c4df470be5512f6277c5",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.2.0/routerctl_0.2.0_Linux_arm64.tar.gz": "02812ba04a818023f20bea922d3e19ef0466fbed15008331c2c7b0cca792fc76",
}
