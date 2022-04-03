cask "ssh-config-editor-alt" do
  version "2.3.2,91"
  sha256 :no_check

  url "https://gitlab.com/wayofdev/casks/-/raw/main/SSH.Config.Editor.#{version.major_minor_patch}.dmg.zip?inline=false"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle
  end

  conflicts_with cask: "ssh-config-editor"
  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
