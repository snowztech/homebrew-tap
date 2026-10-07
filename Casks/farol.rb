cask "farol" do
  version "0.30.1"
  sha256 "57e5a40b5b58ecc64e68fe662c916e3fc1bbd1ba34ae716d84323e38e71af6bb"

  url "https://github.com/snowztech/farol/releases/download/v#{version}/Farol.dmg",
      verified: "github.com/snowztech/farol/"
  name "Farol"
  desc "Terminal for working with coding agents, built on libghostty"
  homepage "https://farol.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Farol.app"

  zap trash: [
    "~/.config/farol",
    "~/Library/Preferences/dev.farol.Farol.plist",
  ]
end
