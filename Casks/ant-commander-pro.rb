cask "ant-commander-pro" do
  version "4.7"
  sha256 "fe401b05aa79c12cb0060890fd4b7f6574decfa51da4075f332e0a7be886fbfe"

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
