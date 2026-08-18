cask "mimer" do
  version "0.4.0"
  sha256 "fae3a224f7911483378d13261c8d471133925c74516ff42ab84f23f1e01398c4"

  url "https://github.com/hasanjafri/Mimer/releases/download/v#{version}/Mimer-#{version}.dmg",
      verified: "github.com/hasanjafri/Mimer/"
  name "Mimer"
  desc "Fast, private, developer-first clipboard manager"
  homepage "https://github.com/hasanjafri/Mimer"

  depends_on macos: :sonoma

  app "Mimer.app"

  zap trash: [
    "~/Library/Application Support/Mimer",
    "~/Library/Preferences/com.hasanjafri.Mimer.plist",
  ]
end
