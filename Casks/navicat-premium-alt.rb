cask "navicat-premium-alt" do
  version "16.0.12"
  sha256 :no_check

  url "https://www.dropbox.com/s/gesd73cnl9zt2vn/Navicat.Premium.#{version.major_minor_patch}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/gesd73cnl9zt2vn/Navicat.Premium.#{version.major_minor_patch}.dmg.zip?dl=1"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end
