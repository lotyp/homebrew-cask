cask "numi-alt" do
  version "3.30.701"
  sha256 :no_check

  url "https://gitlab.com/wayofdev/casks/-/raw/main/Numi.#{version}.dmg.zip?inline=false"
  name "Numi"
  desc "Calculator and converter application"
  homepage "https://numi.app/"

  livecheck do
    url "https://s1.numi.app/download"
    strategy :header_match
  end

  conflicts_with cask: "numi"
  depends_on macos: ">= :sierra"

  app "Numi.app"

  uninstall launchctl: "com.dmitrynikolaev.numi#{version.major}helper",
            quit: "com.dmitrynikolaev.numi"

  zap trash: [
    "~/Library/Application Support/Numi",
    "~/Library/Application Support/com.dmitrynikolaev.numi",
    "~/Library/Application Support/CrashReporter/Numi_*.plist",
    "~/Library/Caches/com.crashlytics.data/com.dmitrynikolaev.numi",
    "~/Library/Caches/com.dmitrynikolaev.numi",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.dmitrynikolaev.numi",
    "~/Library/Containers/com.dmitrynikolaev.numi.NumiExtension",
    "~/Library/Preferences/com.dmitrynikolaev.numi.plist",
    "/Users/Shared/Numi",
  ]
end
