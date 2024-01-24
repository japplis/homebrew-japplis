cask "applet-runner-pro" do
  version "2.8"
  sha256 "099a6239235b3e59d236c607e7d123c6bf66bfea855d19fceed8667334d4c6f9"

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
