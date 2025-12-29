cask "infiniloom" do
  version "0.5.2"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "299dc7aaed73393eddad5e4399b49e3cd400fb2c6fae2ba4b0fe8a61758a3ffb"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "0df33cf5d234e86d457cf0b0ba2d2e9985f821ac1dae21adc680eacd21d2be70"
  end

  name "Infiniloom"
  desc "High-performance repository context generator for LLMs"
  homepage "https://github.com/Topos-Labs/infiniloom"

  binary "infiniloom"

  zap trash: [
    "~/.infiniloom",
    "~/.config/infiniloom",
  ]
end
