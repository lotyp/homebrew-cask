cask "navicat-premium-alt" do
  version "16.0.12"
  sha256 :no_check

  url "https://gitlab.com/wayofdev/casks/-/raw/main/Navicat.Premium.#{version.major_minor_patch}.dmg.zip?inline=false"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "navicat-premium"
  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end
