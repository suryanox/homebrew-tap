class Rip < Formula
  desc "A TUI to list processes bound to ports and kill them interactively"
  homepage "https://github.com/suryanox/rip"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-x86_64-apple-darwin.tar.gz"
      # sha256 "3c8ddf1c3421df1fe2a9f80fd2bd5da9d5c5182c050094fedcba3fe15f35a51e"
    end

    on_arm do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-aarch64-apple-darwin.tar.gz"
      # sha256 "560cd21d2d0ac1521f9474c4d3ef3995810e156a1fcb1d1fa930efa7b404c2ff"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    assert_match "rip", shell_output("#{bin}/rip --help 2>&1", 1)
  end
end
