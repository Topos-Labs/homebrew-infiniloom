class Infiniloom < Formula
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"
  url "https://github.com/Topos-Labs/infiniloom/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "82df106c1ab9ea3ef947f2e8fa5662ebe6239b9f5bfa9645023682688b6eeada"
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
