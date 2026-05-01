class Scrap < Formula
  desc "Query, filter, and clean your Mac Trash with ease"
  homepage "https://github.com/suryanox/scrap"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suryanox/scrap/releases/download/v#{version}/scrap-x86_64-apple-darwin.tar.gz"
      # sha256 "43b0a285bd52b4fe0112b647627a58f81674d76b1a4e53b5eaf6b0b91ebdaa1f"
    end

    on_arm do
      url "https://github.com/suryanox/scrap/releases/download/v#{version}/scrap-aarch64-apple-darwin.tar.gz"
      # sha256 "e97cc2938afb750083bccaa69b39e376b942158e0954188db297157ae37a1585"
    end
  end

  def install
    bin.install "scrap"
  end

  test do
    assert_match "scrap", shell_output("#{bin}/scrap --help 2>&1", 1)
  end
end
