class Toss < Formula
  desc "Deploy self-built iOS .app bundles to connected devices"
  homepage "https://github.com/Yang-Yiming/AppTossLite"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/AppTossLite/releases/download/v#{version}/toss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e9e4615b136b97cc1eb52671de64341541287bc518e57797e02d16b244b39b08"
    end
  end

  def install
    bin.install "toss"
  end

  test do
    assert_match "toss", shell_output("#{bin}/toss --help", 0)
  end
end
