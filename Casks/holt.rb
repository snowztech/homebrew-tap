cask "holt" do
  version "0.1.3"
  sha256 "eba86b0c2e4c07a1efa186c676dc52cdb1c9ab2da7e445d2265641b2a6dc4657"

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
