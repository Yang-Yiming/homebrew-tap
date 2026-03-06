class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/releases/download/v#{version}/ccrl-aarch64-apple-darwin.tar.gz"
      sha256 "48d3af6c2c63307599a0b2662412e20efef877efc3431a1c153c11acf7d81da1"
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
