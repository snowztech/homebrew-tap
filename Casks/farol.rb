cask "farol" do
  version "0.30.9"
  sha256 "65e578f512fcb13d24f88668ebcacd942591dbaf1ade232500ef7b5ae6b09dc0"

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
