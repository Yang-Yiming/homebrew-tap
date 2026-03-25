class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/releases/download/v#{version}/ccrl-aarch64-apple-darwin.tar.gz"
      sha256 "2511acb6542c76161877ca5b13c0534c80332aa97256a521ae129c758e767a44"
    end
  end

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help", 0)
  end
end
