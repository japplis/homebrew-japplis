cask "ant-commander-pro" do
  version "4.15"
  sha256 "c67d5d5bc5be647e6c6188af3c96508bce3a5b9369afe80df530ea6e0ad3f0fc"

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
