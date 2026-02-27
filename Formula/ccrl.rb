class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/releases/download/v#{version}/ccrl-aarch64-apple-darwin.tar.gz"
      sha256 "05c875160afd73c73ae1956315aa8edde6807dace009ead834898213d889d3cb" 
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
