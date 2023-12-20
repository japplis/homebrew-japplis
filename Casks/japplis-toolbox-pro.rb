cask "japplis-toolbox-pro" do
  version "5.6"
  sha256 "54a3c5a1d706d58f8070ee8e21e33b2f5db2718c216fa2cd5488afca4f36da3f"

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
