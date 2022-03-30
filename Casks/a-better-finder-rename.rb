cask "a-better-finder-rename" do
  version "11.44"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://gfs206n160.userstorage.mega.co.nz/dl/zl13UyLWmwjXHgchGJF0-p8NYI-nn8KvjYDtcfIlS-tzBzQdtMKpI6UwwfIpxuw3CLz9Wo7v5VACE-SKsA_wxWCRqOi9-z2iWdTiYXCBqOuOukGH3ycfNPkToQ8-iQ"
  name "A Better Finder Rename"
  desc "Renamer for files, music and photos"
  homepage "https://www.publicspace.net/ABetterFinderRename/"

  livecheck do
    url "https://www.publicspace.net/app/signed_abfr#{version.major}.xml"
    strategy :sparkle, &:version
  end

  auto_updates false
  depends_on macos: ">= :yosemite"

  app "A Better Finder Rename #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/A Better Finder Rename #{version.major}",
    "~/Library/Caches/com.apple.helpd/Generated/net.publicspace.abfr#{version.major}.help*",
    "~/Library/Caches/net.publicspace.abfr#{version.major}",
    "~/Library/Cookies/net.publicspace.abfr#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfr#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfr#{version.major}.savedState",
  ]
end
