class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/releases/download/v#{version}/ccrl-aarch64-apple-darwin.tar.gz"
      sha256 "c5d3addc41170d1e0238389f5973a30a88541aaabf35609d1ae9a0fa7d473faa"
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
