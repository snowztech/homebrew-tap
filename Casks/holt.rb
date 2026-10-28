cask "holt" do
  version "0.1.7"
  sha256 "399828b13f8c19e2be607d698ad76cf42ddc19b36fd6c933e4c82410435cd162"

  url "https://github.com/snowztech/holt/releases/download/v#{version}/Holt.dmg"
  name "Holt"
  desc "Clipboard history, synced between your Macs"
  homepage "https://holt.snowztech.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Holt.app"

  uninstall quit: "app.holtclip.Holt"

  zap trash: [
    "~/Library/Application Support/Holt",
    "~/Library/Preferences/app.holtclip.Holt.plist",
  ]
end
