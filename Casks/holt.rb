cask "holt" do
  version "0.1.1"
  sha256 "2fa9c9bef054a6bc7784f3897b21ac63617eae4d260de9740b42ab115062a933"

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
