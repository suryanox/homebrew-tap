class Lexa < Formula
  desc "Grammar and style checker TUI"
  homepage "https://github.com/OWNER/lexa"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/suryanox/lexa/releases/download/v#{version}/lexa-darwin-arm64"
      sha256 "1f347a6f382e656cc731d6034694809c48f3c8dbd67cdeb4b6e63e7accf2b389"
    end
  end

  def install
    binary_name = "lexa-darwin-arm64"
    bin.install binary_name => "lexa"
  end

  test do
    system "#{bin}/lexa", "--version"
  end
end
