cask "a-better-finder-rename-alt" do
  version "11.44"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://gitlab.com/wayofdev/casks/-/raw/main/A.Better.Finder.Rename.#{version}.dmg.zip?inline=false"
  name "A Better Finder Rename"
  desc "Renamer for files, music and photos"
  homepage "https://www.publicspace.net/ABetterFinderRename/"

  livecheck do
    url "https://www.publicspace.net/app/signed_abfr#{version.major}.xml"
    strategy :sparkle, &:version
  end

  depends_on macos: ">= :yosemite"

  conflicts_with cask: "a-better-finder-rename"

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
