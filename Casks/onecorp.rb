cask "onecorp" do
  version "0.1.9"
  sha256 "77cd0e5f810ac74931180877ab37dde4f7781fa9d4a3643757baf207d0c4f4d7"

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
