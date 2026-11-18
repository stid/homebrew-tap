cask "stidcart-app" do
  version "0.31.1"
  sha256 "ba612776057ce90d3979c7330219ecf71150e082156eb9651c2f7b0f1c417481"

  url "https://github.com/stid/stidcart/releases/download/v#{version}/stidcart-#{version}-macos-universal.dmg"
  name "stidcart"
  desc "Editor for EasyFlash cartridge images for the Commodore 64"
  homepage "https://github.com/stid/stidcart"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "stidcart.app"

  zap trash: [
    "~/Library/Caches/dev.stid.stidcart",
    "~/Library/Preferences/dev.stid.stidcart.plist",
    "~/Library/WebKit/dev.stid.stidcart",
  ]
end
