cask "onecorp" do
  version "0.1.6"
  sha256 "eca17c7bd3b19ddace66b6d05969c8a68c7203261f344eaed6d325a9f88a1422"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: [
    "~/.onecorp",
    "~/Library/WebKit/dev.onecorp.desktop",
    "~/Library/Caches/dev.onecorp.desktop",
  ]
end
