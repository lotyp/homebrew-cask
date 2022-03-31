cask "ssh-config-editor-alt-alt" do
  version "2.3.2,91"
  sha256 :no_check

  url "https://www.dropbox.com/s/mh49vwvue47au8a/SSH.Config.Editor.v#{version.major_minor_patch}.dmg.zip?dl=1",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0",
      referer: "https://www.dropbox.com/s/mh49vwvue47au8a/SSH.Config.Editor.v#{version.major_minor_patch}.dmg.zip?dl=1"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
