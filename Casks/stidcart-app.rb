cask "stidcart-app" do
  version "0.32.0"
  sha256 "89e7d91ef3090f86106112fbba787d3ce123acca7fd2c613ba054cfa7271a6e7"

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
