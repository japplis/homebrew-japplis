cask "control-dashboard" do
  version "1.0"
  sha256 "348340f11fe9ea256b2d85e69c7bab6928af738ea1924ab571028a304cff2ab1"

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
