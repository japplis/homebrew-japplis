cask "applet-runner-pro" do
  version "2.10"
  sha256 "30bd639cf0527b8790e2bb7ba1a878ee391bb67b2b592c818c3bf7a494cda3d5"

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
