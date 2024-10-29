cask "applet-runner-pro" do
  version "2.13"
  sha256 "cac0da4bbc77f01d5ae946a4016b3ce5adfc2a0b7a55284ea73889fef470a5ad"

  url "https://www.japplis.com/applet-runner/pro/versions/AppletRunnerPro-#{version}.dmg"
  name "Applet Runner Pro"
  desc "Run Java Applets as an Application"
  homepage "https://www.japplis.com/applet-runner/pro/"

  livecheck do
    url "https://www.japplis.com/applet-runner/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Applet Runner Pro.app"

  uninstall quit: "com.japplis.appletrunner.AppletRunnerPro"

  zap trash: [
    "~/Library/Application Support/Japplis/AppletRunnerPro",
    "~/Library/Preferences/com.japplis.appletrunner.plist",
  ]
end
