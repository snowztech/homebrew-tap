cask "onecorp" do
  version "0.1.3"
  sha256 "5502438a6fb4156c6686cf1f8c9248c48406703a3d99f1aad4fa2b170f0b5aa7"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
