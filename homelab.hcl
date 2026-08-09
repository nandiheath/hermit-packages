description = "Unified homelab renderer and OpenWrt controller"
binaries = ["homelab"]
test = "homelab version"

platform "darwin" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Darwin_${arch}.tar.gz"
}

platform "linux" {
  source = "https://github.com/nandiheath/homelab-cli/releases/download/v${version}/homelab_${version}_Linux_${arch}.tar.gz"
}

version "0.3.0" "0.3.1" "0.3.2" "0.4.0" "0.5.0" {
  auto-version {
    github-release = "nandiheath/homelab-cli"
  }
}

sha256sums = {
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Linux_arm64.tar.gz": "61bdc08f5a6f2f494a3ac0db58a69f9654648399622b61e3810aaba33277435e",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Linux_amd64.tar.gz": "bb5b24d1c1a680ddd3e9814a8ad48153a86fd3b4ae37634e181c553f7cfc09e9",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Darwin_amd64.tar.gz": "ce13294ee2f4ec058dcc069a24b2f680e5f9e3c69c12636315feab02bf95f062",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.0/homelab_0.3.0_Darwin_arm64.tar.gz": "966386db9b2281c31065deb7df2368d0e9a5308501d68b6537495c96260bf48d",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Darwin_arm64.tar.gz": "553b241a2dd58a727328bd461d92d42e042513b70c68af332ebbcf01396cbaea",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Linux_arm64.tar.gz": "978a4264a045288492ceea2d2fc48bf0a3d504160d76cfe8c761bf192ad5efc0",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Linux_amd64.tar.gz": "b2a6ff4c22d592029e074b2546a3bcfdd53410fb772803ddc54b566a059e80ee",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.1/homelab_0.3.1_Darwin_amd64.tar.gz": "c2608c166ee459e088f6be509eca67ce5aa3526fc7af03c78eba2ac8a838991c",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Linux_amd64.tar.gz": "172410891ec23df2575778f42be6aae2dbfb2583486c0445fccb18c7cb804539",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Darwin_amd64.tar.gz": "a55f5d25440a5f2b2fab4cc0af6a3a01b07c1a6272959fb610c422bbfcc28b7c",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Darwin_arm64.tar.gz": "0ea67a498a0e0c310788a234dfc3a55e70adc9f3aaeb3b8c01c9b8828ddc3f3e",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.3.2/homelab_0.3.2_Linux_arm64.tar.gz": "ce94a0dae69bb881b334e216bf83923ff873eb732b46a83e96f98b160c805459",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Linux_amd64.tar.gz": "e572fe24d9e428ff56a48a5c8a770f15551f67b30ffacbd1938f9c7be92a88b6",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Darwin_amd64.tar.gz": "010bb2cdb9d7597d063911fcf30185f1600e59ec5e9eccd25276ae67504b4346",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Darwin_arm64.tar.gz": "6fcd6ada1346f699cf5046adcb3cc5382d3a784a0a7d75421e8879ab66de8872",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.4.0/homelab_0.4.0_Linux_arm64.tar.gz": "a081f6c085313474450b978cb8ca508dba1337048075adfd9ae8a0a0a3d3fbca",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Linux_amd64.tar.gz": "c7eefb6b7174081fdbbb283e156c141e737917e019013ac8a52d3334de524f12",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Darwin_amd64.tar.gz": "523cf2f0a44d34602026ef644b973b1eac81cd5317087357e81f2396b561a0f4",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Darwin_arm64.tar.gz": "0588bdd2c49436ec663e60477132f71f8156246267a9822613c877c2bc5ba9e8",
  "https://github.com/nandiheath/homelab-cli/releases/download/v0.5.0/homelab_0.5.0_Linux_arm64.tar.gz": "ebd4f65361de442647d5dbbd690045c3a1f7a23423a713acddc293ae138b25ca",
}
