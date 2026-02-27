class Ccrl < Formula
  desc "A Lightweight ClaudeCode Router"
  homepage "https://github.com/Yang-Yiming/cc-router-lite"
  url "https://github.com/Yang-Yiming/cc-router-lite/archive/refs/tags/v0.1.tar.gz"
  sha256 "b665b6461b195661babd4ab3da4291d9a309b28982d4a170be6946332fbf0ec3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ccrl", shell_output("#{bin}/ccrl --help")
  end
end
