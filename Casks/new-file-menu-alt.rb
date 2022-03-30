cask "new-file-menu-alt" do
  version "1.5"
  sha256 :no_check

  url "https://www.dropbox.com/s/bcun4j1q01ujvh8/New.File.Menu.v#{version.major_minor}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/bcun4j1q01ujvh8/New.File.Menu.v1.5.dmg.zip?dl=1"
  name "New File Menu"
  desc "Create files via Finder menu"
  homepage "https://langui.net/new-file-menu/"

  auto_updates false
  depends_on macos: ">= :catalina"

  app "New File Menu.app"

  zap trash: [
    "/Applications/NewFileMenu.app",
    "~/Library/Application Scripts/net.langui.NewFileMenu",
    "~/Library/Application Scripts/net.langui.NewFileMenu.NewFileMenuExtension",
    "~/Library/Application Scripts/net.langui.NewFileMenuHelper",
    "~/Library/Application Scripts/net.langui.NewFileMenuLauncher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.langui.newfilemenuhelper.stl2",
    "~/Library/Caches/com.apple.helpd/Generated/net.langui.NewFileMenu.help*#{version.major_minor}",
    "~/Library/Containers/net.langui.NewFileMenu",
    "~/Library/Containers/net.langui.NewFileMenu.NewFileMenuExtension",
    "~/Library/Containers/net.langui.NewFileMenuHelper",
    "~/Library/Containers/net.langui.NewFileMenuLauncher",
    "~/Library/Group Containers/85P8ZUTQL8.net.langui.NewFileMenu",
  ]
end
