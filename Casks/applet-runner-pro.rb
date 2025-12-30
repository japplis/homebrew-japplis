cask "applet-runner-pro" do
  version "2.18"
  sha256 "93e1f7dbb634858998b258eb0747f9d260254b9de47c74312ac96152e851e2df"

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
