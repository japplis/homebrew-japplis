cask "control-dashboard" do
  version "1.1"
  sha256 "ced06c6d3fc8f95be6c5a6a68e0ba832aa386bc0c5f0285803c22d38f26bdb17"

  url "https://www.japplis.com/control-dashboard/versions/ControlDashboard-#{version}.dmg"
  name "Control Dashboard"
  desc "Monitor and control dashboard"
  homepage "https://www.japplis.com/control-dashboard/"

  livecheck do
    url "https://www.japplis.com/control-dashboard/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Control Dashboard.app"

  uninstall quit: "com.japplis.controldashboard.ControlDashboard"

  zap trash: [
    "~/Library/Application Support/Japplis/ControlDashboard",
    "~/Library/Preferences/com.japplis.controldashboard.plist",
  ]
end
