cask "japplis-toolbox-pro" do
  version "6.1.1"
  sha256 "16e3f3222e2207d8c8c1dd994b3ecda568a05b62a26aa563311799ad89ad4d94"

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
