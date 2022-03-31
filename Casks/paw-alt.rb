cask "paw" do
  version "3.3.6,3003006001"
  sha256 :no_check

  url "https://www.dropbox.com/s/9zp6jt243pl1llr/Paw.#{version.major_minor}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/9zp6jt243pl1llr/Paw.#{version.major_minor}.dmg.zip?dl=1"
  name "Paw"
  desc "HTTP client that helps testing and describing APIs"
  homepage "https://paw.cloud/"

  livecheck do
    url "https://paw.cloud/api/v2/updates/appcast"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Paw.app"

  zap trash: [
    "~/Library/Application Scripts/com.luckymarmot.Paw",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*",
    "~/Library/Containers/com.luckymarmot.Paw",
    "~/Library/Preferences/com.luckymarmot.Paw.plist",
    "~/Library/Saved Application State/com.luckymarmot.Paw.savedState",
  ]
end
