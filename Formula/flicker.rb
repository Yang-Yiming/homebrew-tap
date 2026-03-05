class Flicker < Formula
  desc "Lightweight CLI notebook"
  homepage "https://github.com/Yang-Yiming/Flicker"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/Flicker/releases/download/v#{version}/flicker-aarch64-apple-darwin.tar.gz"
      sha256 "8a336b69f3485304d3f68f8e76181014a0bf4b9fde08a13f3b2c98f16bed8153"
    end
  end

  def install
    bin.install "flicker"
  end

  test do
    assert_match "flicker", shell_output("#{bin}/flicker --help", 0)
  end
end
