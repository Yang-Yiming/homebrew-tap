class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/releases/download/v#{version}/ccrl-aarch64-apple-darwin.tar.gz"
      sha256 "0d37df31f73f5e9fbecb8d31cb93ab689af2e9e65b9cf4c8fc669e91a5f4771b"
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
