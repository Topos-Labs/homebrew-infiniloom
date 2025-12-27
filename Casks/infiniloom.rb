cask "infiniloom" do
  version "0.4.11"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "61cea1078607a6c4dfb665d01b0a14ee3b290516d27d0a0d6f2034356aebebfc"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "26adf7a71b93bd3c33c0f8bb7823fbc25f7c5b91dd13bf4653ef13a2cb42fc88"
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
