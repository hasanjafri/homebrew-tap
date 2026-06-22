cask "mimer" do
  version "0.2.2"
  sha256 "8e2f0d5d26cf36427572d46c4cab8d8ed40a1047fca23182f74e1d5e5db3f6f3"

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
