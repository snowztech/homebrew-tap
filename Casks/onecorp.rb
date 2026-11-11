cask "onecorp" do
  version "0.1.4"
  sha256 "c7b4537e86b03917a3cab74c8cdf6a4a6831719a5b8ee089f90e30975c665b98"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
