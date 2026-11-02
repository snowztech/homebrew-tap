cask "farol" do
  version "0.55.0"
  sha256 "9a33d75458fea1e3d086e062265d5509383865b3ac343c6f176c92fbee118844"

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
