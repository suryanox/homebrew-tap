class Rip < Formula
  desc "A TUI to list processes bound to ports and kill them interactively"
  homepage "https://github.com/suryanox/rip"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-x86_64-apple-darwin.tar.gz"
      # sha256 "c4f586cc4e33c84f4e5fce1d4c9508469608a4c7119582d0fee4643d44abce09"
    end

    on_arm do
      url "https://github.com/suryanox/rip/releases/download/v#{version}/rip-aarch64-apple-darwin.tar.gz"
      # sha256 "21feb924c090238bf768939b783bc2ce4b110c968d03f43d7fb8219bc8f85107"
    end
  end

  def install
    bin.install "rip"
  end

  test do
    assert_match "rip", shell_output("#{bin}/rip --help 2>&1", 1)
  end
end
