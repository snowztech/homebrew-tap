cask "farol" do
  version "0.35.0"
  sha256 "c8bc5db947e7c65197ff3309a19a39f2dcae1d4b79d173605b4b70ea677bb748"

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
