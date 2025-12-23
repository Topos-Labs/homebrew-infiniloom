class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "c55000ba6a5c1a20ca13e157614d1fe312b0256e039418884cd90dfa5c33bb50"
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
