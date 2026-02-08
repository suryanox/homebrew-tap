class Neuron < Formula
  desc "A simple TUI app to dump and search your thoughts"
  homepage "https://github.com/suryanox/neuron"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-x86_64-apple-darwin.tar.gz"
      sha256 "c21e64552d0158fed29bcfbdbf6487a797fed7219408beec71710ef32fc2c988"
    end
    on_arm do
      url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-aarch64-apple-darwin.tar.gz"
      sha256 "21fa6e90d95db183722af9b4e2db0c4123e7279dcc2cefe43c4402c057678f14"
    end
  end

  on_linux do
    url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8c388195eb670369e3821b5634caca382eae1f7dc88f0c7a058071615ae17b7f"
  end

  def install
    bin.install Dir["neuron-*"].first => "neuron"
  end

  test do
    assert_match "neuron", shell_output("#{bin}/neuron --help")
  end
end
