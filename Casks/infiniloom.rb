cask "infiniloom" do
  version "0.5.4"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "4839602b03d755b5e864cf13253bac9b98a7e8d5b50a4b6a4e34bfdc47ecb366"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "ecd3404d6aa7641998cc4cd5bb32bd51b9102b2587eaccde51a1aa741ab3edcb"
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
