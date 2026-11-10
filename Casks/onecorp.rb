cask "onecorp" do
  version "0.1.1"
  sha256 "b01da26fb3eecac3302e0491101434b8a6fd6184e770d96faf32c456062f7f59"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
