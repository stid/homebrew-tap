class Stidcart < Formula
  desc "Build, list and edit EasyFlash cartridge images for the Commodore 64"
  homepage "https://github.com/stid/stidcart"
  url "https://github.com/stid/stidcart/releases/download/v0.32.0/stidcart-cli-0.32.0-macos-universal.tar.gz"
  sha256 "800ab81c1c1c7df62650fd5be30210dffed6f645a8838ff3673ff69f2c512173"
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
