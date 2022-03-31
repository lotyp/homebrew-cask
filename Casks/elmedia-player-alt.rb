cask "elmedia-player-alt" do
  version "8.4,3056"
  sha256 :no_check

  url "https://www.dropbox.com/s/5zp8zzq34xpars3/Elmedia.Player.#{version.major_minor}.#{version.after_comma}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/"
  name "Elmedia Player"
  desc "Video and audio player"
  homepage "https://mac.eltima.com/media-player.html"

  livecheck do
    url "https://cdn.eltima.com/download/elmediaplayer-update/elmediaplayer.xml"
    strategy :sparkle
  end

  conflicts_with cask: "elmedia-player"
  app "Elmedia Player.app"

  zap trash: [
    "~/Library/Caches/com.Eltima.ElmediaPlayer",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.LSSharedFileList.plist",
    "~/Library/Preferences/com.Eltima.ElmediaPlayer.plist",
    "~/Library/Preferences/com.eltima.activator.xml",
  ]
end
