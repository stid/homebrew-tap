class Stidcart < Formula
  desc "Build, list and edit EasyFlash cartridge images for the Commodore 64"
  homepage "https://github.com/stid/stidcart"
  url "https://github.com/stid/stidcart/releases/download/v0.31.1/stidcart-cli-0.31.1-macos-universal.tar.gz"
  sha256 "c64b065bfc7c1c427168f5d7bc8c078a1739d1b029ecd687de94dcc97bc1b290"
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
