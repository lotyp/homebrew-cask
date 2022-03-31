cask "sublime-text-dev-alt" do
  version "4.131"
  sha256 :no_check

  url "https://www.dropbox.com/s/4tkknrlhan5uqay/Sublime.Text.#{version}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/4tkknrlhan5uqay/Sublime.Text.#{version}.dmg.zip?dl=1"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/dev"

  livecheck do
    url :homepage
    regex(/href=.*?v?(\d+)_mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)[1]
      next if match.blank?

      "#{match[0]}.#{match[1..]}"
    end
  end

  conflicts_with cask: "sublime-text"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  # Sublime Text 4 uses `Sublime Text 3` and `com.sublimetext.3` dirs if they exist
  # Otherwise, it creates `Sublime Text` and `com.sublimetext.4`
  # More info: https://www.sublimetext.com/docs/side_by_side.html
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text",
    "~/Library/Application Support/Sublime Text (Safe Mode)",
    "~/Library/Application Support/Sublime Text 3",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/Caches/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
