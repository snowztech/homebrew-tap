cask "farol" do
  version "0.34.0"
  sha256 "160b9a573fcb81533808dc0b15ffdf46880994dfc87937f549d0d9288344f4bd"

  url "https://github.com/snowztech/farol/releases/download/v#{version}/Farol.dmg"
  name "Farol"
  desc "Terminal for working with coding agents, built on libghostty"
  homepage "https://farol.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Farol.app"

  zap trash: [
    "~/.config/farol",
    "~/Library/Preferences/dev.farol.Farol.plist",
  ]
end
