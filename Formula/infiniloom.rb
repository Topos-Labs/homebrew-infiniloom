class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "faa4bad60b01f688ae6e6c70f439d5b349f1640414ec936adc853f614d3d5e5f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "cli")
  end

  test do
    system bin/"infiniloom", "--version"
  end
end
