class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/archive/refs/tags/v#{version}.tar.gz"
      sha256 "8adeae4bfe7929a1267f33c80ad4150d3ee5f44b1ed19a9220498b175e4872ef"
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
