cask "onecorp" do
  version "0.1.12"
  sha256 "9f70a37a26ed83b8da81f9cc5389c21a05817127a7bbe732e3a191d84144a79a"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  # The app updates itself, so brew doesn't treat a newer installed version as out of date.
  auto_updates true

  app "OneCorp.app"

  zap trash: [
    "~/.onecorp",
    "~/Library/WebKit/dev.onecorp.desktop",
    "~/Library/Caches/dev.onecorp.desktop",
  ]
end
