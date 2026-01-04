cask "infiniloom" do
  version "0.6.1"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "0594493afcbebc9f25774cf5c7cf857fc140f55f474f3015c31737ee797f8674"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "d7b47f5364904521d7cd7f8db58c5f18f633128d6ab683f3e59213cfe17862fe"
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
