description = "Switch-user for AWS"
source = "https://github.com/facebook/watchman/releases/download/v${version}/watchman-${version}-${os}.zip"
binaries = ["watchman"]

version "2021.01.11.00" {
  darwin {
    source = "https://github.com/facebook/watchman/releases/download/v${version}/watchman-v${version}-macos.zip"
  }
}
