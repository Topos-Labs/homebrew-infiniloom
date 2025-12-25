cask "infiniloom" do
  version "0.4.4"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "7e3ab7f2c2ff9d33f4e5edc98da45a0421849a8828158c286416a7c6919dc5a1"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "1ad5c3e8b39f3c4c160eaba5205105eaf8dacb7e2e7ff22ef89e7c174c3b4715"
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
