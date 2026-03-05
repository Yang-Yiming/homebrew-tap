class Flicker < Formula
  desc "Lightweight CLI notebook"
  homepage "https://github.com/Yang-Yiming/Flicker"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/Flicker/releases/download/v#{version}/flicker-aarch64-apple-darwin.tar.gz"
      sha256 "de2654312d1b0888402e9b40b28967c200ab597c3bb282e994f9af587fcfbd90"
    end
  end

  def install
    bin.install "flicker"
  end

  test do
    assert_match "flicker", shell_output("#{bin}/flicker --help", 0)
  end
end
