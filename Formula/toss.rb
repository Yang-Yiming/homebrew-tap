class Toss < Formula
  desc "Deploy self-built iOS .app bundles to connected devices"
  homepage "https://github.com/Yang-Yiming/AppTossLite"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/AppTossLite/releases/download/v#{version}/toss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "295ba5f65b747edafda17bb089868a24e4760fe9d197161a1b6a4641f682db5c"
    end
  end

  def install
    bin.install "toss"
  end

  test do
    assert_match "toss", shell_output("#{bin}/toss --help", 0)
  end
end
