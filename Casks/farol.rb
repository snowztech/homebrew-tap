cask "farol" do
  version "0.58.0"
  sha256 "499cb734211b84586ff899456a8cf792283724885849ebb5cef7657821569a96"

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
