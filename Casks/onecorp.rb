cask "onecorp" do
  version "0.1.7"
  sha256 "2081bea22c028519cd43f5f36471082ccaaf90fc7b168ba929ad46b298560a14"

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
