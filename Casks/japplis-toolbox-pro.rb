cask "japplis-toolbox-pro" do
  version "6.0"
  sha256 "27b414c28e4b6439006f93650226d6c7177ef3d8363c11bffd10baa2e80212fc"

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
