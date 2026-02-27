class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/archive/refs/tags/v#{version}.tar.gz"
      sha256 "05c875160afd73c73ae1956315aa8edde6807dace009ead834898213d889d3cb"
  license "MIT"

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help")
  end
end
