cask "holt" do
  version "0.1.6"
  sha256 "58af93939db311e10bad2f623f96afaf1727b31ec9709a7e435476c037992c9c"

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
