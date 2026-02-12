class Lexa < Formula
  desc "Grammar and style checker TUI"
  homepage "https://github.com/OWNER/lexa"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/suryanox/lexa/releases/download/v#{version}/lexa-darwin-arm64"
      sha256 "217d9d4adacbcc505bc1f3fbf042a6ce2122a7b2bc4b03fedc4eb5bd77691db4"
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
