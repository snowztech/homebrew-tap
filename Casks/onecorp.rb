cask "onecorp" do
  version "0.1.8"
  sha256 "0ba08459c2d06c59260fd9f2ec64c926ca419f62cecb9eeb02d9e229ed84a011"

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
