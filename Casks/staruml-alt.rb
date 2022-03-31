cask "staruml-alt" do
  version "5.0.1"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://www.dropbox.com/s/1lzdedndoy4uqf1/StarUML.#{version}.amd64.dmg.zip?dl=0",
        referer: "https://www.dropbox.com/"
  else
    url "https://www.dropbox.com/s/jp2u4lzwckm85si/StarUML.#{version}.arm64.dmg.zip?dl=0",
        referer: "https://www.dropbox.com/"
  end

  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/"
    strategy :page_match
    regex(%r{href=.*?/StarUML-(\d+(?:\.\d+)*)\.dmg}i)
  end

  conflicts_with cask: "staruml"

  app "StarUML.app"
end
