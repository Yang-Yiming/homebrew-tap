class Toss < Formula
  desc "Deploy self-built iOS .app bundles to connected devices"
  homepage "https://github.com/Yang-Yiming/AppTossLite"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/AppTossLite/releases/download/v#{version}/toss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3b226666ff4f3cf86d7e9235ca23cb80acb8c2eef1902e03e887d00c909af660"
    end
  end

  def install
    bin.install "toss"
  end

  test do
    assert_match "toss", shell_output("#{bin}/toss --help", 0)
  end
end
