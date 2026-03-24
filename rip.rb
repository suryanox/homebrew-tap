class Rip < Formula
  desc "A TUI to list processes bound to ports and kill them interactively"
  homepage "https://github.com/suryanox/rip"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-x86_64-apple-darwin.tar.gz"
      # sha256 "99bea0226e03d197b3a4e975ded869eb63bb0776781d188b29640876956cd0ad"
    end

    on_arm do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-aarch64-apple-darwin.tar.gz"
      # sha256 "60304f83cab7e85f73c4cbf4bf63e1aec2993290a97a93d1c6a38e11bc5786a9"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    assert_match "rip", shell_output("#{bin}/rip --help 2>&1", 1)
  end
end
