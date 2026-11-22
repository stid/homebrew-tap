cask "stidcart-app" do
  version "0.32.1"
  sha256 "590e2cbac70697ba35b51ca412bda727a3eca6737384b8a868843513797b6e0e"

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
