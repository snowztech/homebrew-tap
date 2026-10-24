cask "farol" do
  version "0.49.0"
  sha256 "1fbba68eeb2aa41edf578b76319a0dd73f0442bde58807c6a05e4cdec82583f6"

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
