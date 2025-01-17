cask "japplis-toolbox-pro" do
  version "5.9"
  sha256 "cc131e16855e8cc21a678bc34d12691ddd62cb0e0a183a56e071f37a588cf6d8"

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
