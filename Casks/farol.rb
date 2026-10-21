cask "farol" do
  version "0.47.1"
  sha256 "2b88d1fc4d3a89734f9c029227ae85c64345c54c6ed92e62cfd7f3bcb184d881"

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
