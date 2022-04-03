cask "staruml-alt" do
  version "5.0.1"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://gitlab.com/wayofdev/casks/-/raw/main/StarUML.#{version}.amd64.dmg.zip?inline=false"
  else
    url "https://gitlab.com/wayofdev/casks/-/raw/main/StarUML.#{version}.arm64.dmg.zip?inline=false"
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
