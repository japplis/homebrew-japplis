cask "ant-commander-pro" do
  version "5.0"
  sha256 "ef1119272f9415b7849915c6fdc827b11bb7bf282f9194253d8440f592fc6dc6"

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
