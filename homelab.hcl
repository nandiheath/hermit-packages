description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.3.2" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Linux_amd64.tar.gz": "172410891ec23df2575778f42be6aae2dbfb2583486c0445fccb18c7cb804539",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Darwin_amd64.tar.gz": "a55f5d25440a5f2b2fab4cc0af6a3a01b07c1a6272959fb610c422bbfcc28b7c",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Darwin_arm64.tar.gz": "0ea67a498a0e0c310788a234dfc3a55e70adc9f3aaeb3b8c01c9b8828ddc3f3e",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Linux_arm64.tar.gz": "ce94a0dae69bb881b334e216bf83923ff873eb732b46a83e96f98b160c805459",
}
