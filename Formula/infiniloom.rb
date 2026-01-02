class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "ba644268c56ee4c7e470e2b9377ce06d3572ba9cb5fd04f2d4f604fb36953cb3"
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
