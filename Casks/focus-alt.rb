cask "focus-alt" do
  version "1.13.1"
  sha256 :no_check

  url "https://gitlab.com/wayofdev/casks/-/raw/main/Focus.#{version}.dmg.zip?inline=false"
  name "Focus"
  desc "Website and application blocker"
  homepage "https://heyfocus.com/"

  conflicts_with cask: "focus"
  depends_on macos: ">= :yosemite"

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Application Support/Focus/",
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
