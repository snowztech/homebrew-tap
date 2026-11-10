cask "onecorp" do
  version "0.1.0"
  sha256 "ae12a9d816f483f16ebc424ea6274d3084592ab972467e25d6f42d60fb6d8d70"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
