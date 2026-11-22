class Stidcart < Formula
  desc "Build, list and edit EasyFlash cartridge images for the Commodore 64"
  homepage "https://github.com/stid/stidcart"
  url "https://github.com/stid/stidcart/releases/download/v0.32.1/stidcart-cli-0.32.1-macos-universal.tar.gz"
  sha256 "ab0c693a589d172a339dcf181367401e59a5924c6c3285cf60aa612a3958f831"
  license all_of: ["GPL-2.0-or-later", "Zlib"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "stidcart"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stidcart --version")
  end
end
