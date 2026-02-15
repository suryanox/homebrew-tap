class Crux < Formula
  desc "Terminal-first DB client: connect, query, and explore your data, fast"
  homepage "https://github.com/suryanox/crux"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-x86_64-apple-darwin.tar.gz"
      sha256 "119cc41f02da2e056002c8227a58db84c048a5d0bc9a824291306633a442b369"
    end
    on_arm do
      url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-aarch64-apple-darwin.tar.gz"
      sha256 "e5066e96260025ee913342f56aa7f7b96017c9fe039011ce8d3b7e2f8b9b3234"
    end
  end

  on_linux do
    url "https://github.com/suryanox/crux/releases/download/v#{version}/crux-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aab44f06d429d700825e974c429c05350860950cd9a82c747e7d5dfc061718b5"
  end

  def install
    bin.install Dir["crux-*"].first => "crux"
  end

  test do
    assert_match "crux", shell_output("#{bin}/crux --help")
  end
end
