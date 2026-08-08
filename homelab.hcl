description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.4.0" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Linux_amd64.tar.gz": "e572fe24d9e428ff56a48a5c8a770f15551f67b30ffacbd1938f9c7be92a88b6",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Darwin_amd64.tar.gz": "010bb2cdb9d7597d063911fcf30185f1600e59ec5e9eccd25276ae67504b4346",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Darwin_arm64.tar.gz": "6fcd6ada1346f699cf5046adcb3cc5382d3a784a0a7d75421e8879ab66de8872",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Linux_arm64.tar.gz": "a081f6c085313474450b978cb8ca508dba1337048075adfd9ae8a0a0a3d3fbca",
}
