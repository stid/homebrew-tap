# stid/tap

Homebrew recipes for [stidcart](https://github.com/stid/stidcart), which builds and edits
EasyFlash cartridge images for the Commodore 64.

```bash
brew install stid/tap/stidcart              # the command
brew install --cask stid/tap/stidcart-app   # the app, which brings the command with it
```

Both are the signed and notarized files from stidcart's
[releases](https://github.com/stid/stidcart/releases), for Intel and Apple silicon. `brew upgrade`
picks up a new release.

The recipes are rewritten by stidcart's release workflow each time a release is published, so
changes to them belong in a pull request against that workflow as well as here.
