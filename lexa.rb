class Lexa < Formula
  desc "Grammar and style checker TUI"
  homepage "https://github.com/OWNER/lexa"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/suryanox/lexa/releases/download/v#{version}/lexa-darwin-arm64"
      sha256 "410fcf745f62a69087068ac2d7805e61fe981b3b46297322f9707e4768e1001a"
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
