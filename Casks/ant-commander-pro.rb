cask "ant-commander-pro" do
  version "6.2"
  sha256 "d1c45686fe5c30704342946235d9b644fec7d24c1fae23648d09d32325ee17e5"

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
