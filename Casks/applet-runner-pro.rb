cask "applet-runner-pro" do
  version "2.7"
  sha256 "f3c53a42a8ee83d0dac5fe91e9d6cf1f130b89d4df4a451030d9694a7a860b78"

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
