cask "farol" do
  version "0.59.0"
  sha256 "a93dafa74ce3285f7c11a6b2d17281e285976b559fede67aa226b446732d43cf"

  url "https://github.com/snowztech/farol/releases/download/v#{version}/Farol.dmg"
  name "Farol"
  desc "Terminal for working with coding agents, built on libghostty"
  homepage "https://farol.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Farol.app"

  zap trash: [
    "~/.config/farol",
    "~/Library/Caches/dev.farol.Farol",
    "~/Library/Preferences/dev.farol.Farol.plist",
  ]
end
