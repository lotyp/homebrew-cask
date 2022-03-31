cask "sublime-merge-dev" do
  version "2.0.2069"
  sha256 :no_check

  url "https://www.dropbox.com/s/qns9b1b5tnihgot/Sublime.Merge.#{version}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/qns9b1b5tnihgot/Sublime.Merge.#{version}.dmg.zip?dl=1"
  name "Sublime Merge"
  desc "Git client"
  homepage "https://www.sublimemerge.com/dev"

  livecheck do
    url "https://www.sublimemerge.com/updates/dev_update_check"
    regex(/"latest_version"\s*:\s*(\d+)/i)
  end

  conflicts_with cask: "sublime-merge"

  app "Sublime Merge.app"
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: "com.sublimemerge"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*",
    "~/Library/Application Support/Sublime Merge",
    "~/Library/Caches/com.sublimemerge/",
    "~/Library/Preferences/com.sublimemerge.plist",
    "~/Library/Saved Application State/com.sublimemerge.savedState",
  ]
end
