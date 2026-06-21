cask "mimer" do
  version "0.2.1"
  sha256 "fc187ebcdf979c66bae1e6c80a87ec8854b06ead77222521f02f72a5e770d194"

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
