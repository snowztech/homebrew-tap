cask "onecorp" do
  version "0.1.5"
  sha256 "6762ba0908edd05a8b8a03f4f2618d24e2f871b8942780382a53c03b4f02b2f8"

  url "https://github.com/snowztech/onecorp/releases/download/v#{version}/OneCorp.dmg"
  name "OneCorp"
  desc "Run a company of AI employees on your Mac"
  homepage "https://onecorp.dev"

  app "OneCorp.app"

  zap trash: "~/.onecorp"
end
