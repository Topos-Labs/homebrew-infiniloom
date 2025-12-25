cask "infiniloom" do
  version "0.4.5"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "83c66fb5a46ae1d5287edcccc2e477d50a8b1472615c32bad3b6ac9f8fff3ffc"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "0675f66d71a72369fb3ca8158d6a5772b127b9add09a60ccd07bd69b1cea0c35"
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
