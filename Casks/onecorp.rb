cask "onecorp" do
  version "0.1.2"
  sha256 "5d0440b00c0d25cea203995cc709d74b87857b82417f33bc7ee5ef636d6a713a"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
