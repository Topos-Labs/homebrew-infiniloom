class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.4.9.tar.gz"
  sha256 "e358203b78f90b97cfb3e953db810092b221d3d93548fb034614490019418a94"
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
