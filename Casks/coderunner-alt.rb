cask "coderunner-alt" do
  version "4.1,62956"
  sha256 :no_check

  url "https://gitlab.com/wayofdev/casks/-/raw/main/CodeRunner.#{version.major_minor}.dmg.zip?inline=false"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle
  end

  conflicts_with cask: "coderunner"

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Support/CodeRunner",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
