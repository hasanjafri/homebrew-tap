cask "mimer" do
  version "0.2.0"
  sha256 "dc17d56c6a34e97d3b68af938a53ac7cfbe6e58470681dfd78ded358e9ad08ad"

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
