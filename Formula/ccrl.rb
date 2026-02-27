class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  version "0.1"

  on_macos do
    on_arm do
      url "https://github.com/Yang-Yiming/cc-router-lite/archive/refs/tags/v#{version}.tar.gz"
      sha256 "b665b6461b195661babd4ab3da4291d9a309b28982d4a170be6946332fbf0ec3"
  license "MIT"

  def install
    bin.install "ccrl"
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help")
  end
end
