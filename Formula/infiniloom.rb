class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "6483c14326d6dbac2ebe53071e105e485f4b905808b46526649f91843fa0c979"
  license "MIT"
  head "https://github.com/Topos-Labs/infiniloom.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "cli")
  end

  test do
    system bin/"infiniloom", "--version"
  end
end
