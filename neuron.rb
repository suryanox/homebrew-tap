class Neuron < Formula
  desc "A simple TUI app to dump and search your thoughts"
  homepage "https://github.com/suryanox/neuron"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-x86_64-apple-darwin.tar.gz"
      sha256 "5c942cd46ae82a31ffa280a04eaa955d1ce3b1855b5cc28bbc86109511a072af"
    end
    on_arm do
      url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-aarch64-apple-darwin.tar.gz"
      sha256 "1c982420ad870893fa4c67141d4888c0bd000197bada97255ae09a8e465ade82"
    end
  end

  on_linux do
    url "https://github.com/suryanox/neuron/releases/download/v#{version}/neuron-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "644b0043bcc5d3b68ed7db24275e7e77545f8dc6b4cea87754bcb2f7c6c8bce7"
  end

  def install
    bin.install "neuron"
  end

  test do
    assert_match "neuron", shell_output("#{bin}/neuron --help 2>&1", 1)
  end
end

