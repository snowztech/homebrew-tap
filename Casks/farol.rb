cask "farol" do
  version "0.36.0"
  sha256 "e7d077493b15af37dfd3c4b747d414e09298701f04dd09085a7baebeee0c73b3"

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
