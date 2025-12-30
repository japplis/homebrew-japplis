cask "ant-commander-pro" do
  version "5.6"
  sha256 "c5536885724d0497decef2d85a69c701e6af5da051670353662887f91254ed4c"

  url "https://www.antcommander.com/versions/AntCommanderPro-#{version}.dmg"
  name "Ant Commander Pro"
  desc "Professional file manager"
  homepage "https://www.antcommander.com/"

  livecheck do
    url "https://www.antcommander.com/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Ant Commander Pro.app"

  uninstall quit: "com.japplis.antcommander.AntCommanderPro"

  zap trash: [
    "~/Library/Application Support/Japplis/AntCommanderPro",
    "~/Library/Preferences/com.japplis.antcommander.plist",
  ]
end
