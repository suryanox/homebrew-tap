class Crux < Formula
  desc "Terminal-first DB client: connect, query, and explore your data, fast"
  homepage "https://github.com/suryanox/crux"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-x86_64-apple-darwin.tar.gz"
      sha256 "15af0b62f94672fc182c697355f822a91fe082f8c0584ce33ff62e83732e0080"
    end
    on_arm do
      url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-aarch64-apple-darwin.tar.gz"
      sha256 "1616b2f097c1531db4b21df336274e5f137d2368c798d62895ab2e8c82e6c08a"
    end
  end

  on_linux do
    url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0c7b38d3a31441e9aafd819d48171d7a051d6a67d0502896fb91e57d8a25942"
  end

  def install
    bin.install Dir["crux-*"].first => "crux"
  end

  test do
    assert_match "crux", shell_output("#{bin}/crux --help")
  end
end
