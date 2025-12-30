cask "infiniloom" do
  version "0.5.2"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "33801512efca8501a7b76a825807bf460d86613e2ec2050a5b7294ecd06c92da"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "65a275125a45ab011019ed639a05e6d4f767780b981bc60f47bac9a14d9eabae"
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
