cask "infiniloom" do
  version "0.4.7"

  on_intel do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-x64.tar.gz"
    sha256 "5472907512b3d8b25d05b0e6572584b511bf102ed06e19bb455d7bc8bcc326c8"
  end

  on_arm do
    url "https://github.com/Topos-Labs/infiniloom/releases/download/v#{version}/infiniloom-darwin-arm64.tar.gz"
    sha256 "0322c46274a94a9ac46376bba1a921ad8b13d1686a3670e9bdb850b11be49c50"
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
