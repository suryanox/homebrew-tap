class Scrap < Formula
  desc "Query, filter, and clean your Mac Trash with ease"
  homepage "https://github.com/suryanox/scrap"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/scrap/releases/download/v#{version}/scrap-x86_64-apple-darwin.tar.gz"
      # sha256 "781af06249001695b970348006ee776f0058801a21bd9bc79d1b16b6513332f3"
    end

    on_arm do
      url "https://github.com/suryanox/scrap/releases/download/v#{version}/scrap-aarch64-apple-darwin.tar.gz"
      # sha256 "041e56d5f03adf798023077016d1bc16d1d388074ba4587325533f5a0bd713e6"
    end
  end

  def install
    bin.install "scrap"
  end

  test do
    assert_match "scrap", shell_output("#{bin}/scrap --help 2>&1", 1)
  end
end
