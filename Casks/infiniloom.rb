cask "infiniloom" do
  version "0.6.3"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "7c9e3959e9563aef996d6d406131f30f6c8aaba137103334069e51ce49359183"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "d3b899a078785e584ddef7bf1173900b027f0d12615ec079d9b5b57453e71143"
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
