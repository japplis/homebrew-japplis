cask "japplis-toolbox-pro" do
  version "6.1"
  sha256 "2c2a9f79608dbbec29623ebd6c4e164107ceee103708ac52f94827b9b329c2ff"

  url "https://www.japplis.com/toolbox/pro/versions/ToolboxPro-#{version}.dmg"
  name "Japplis Toolbox Pro"
  desc "No-code text manipulation"
  homepage "https://www.japplis.com/toolbox/pro/"

  livecheck do
    url "https://www.japplis.com/toolbox/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Toolbox Pro.app"

  uninstall quit: "com.japplis.toolbox.ToolboxPro"

  zap trash: [
    "~/Library/Application Support/Japplis/ToolboxPro",
    "~/Library/Preferences/com.japplis.toolbox.plist",
  ]
end
