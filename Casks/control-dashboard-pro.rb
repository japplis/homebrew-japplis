cask "control-dashboard-pro" do
  version "1.1"
  sha256 "074431c574b97a195c0643ffe0afc7dbf2af0e235bfdaa6f40bf85384d261bdb"

  url "https://www.japplis.com/control-dashboard/pro/versions/ControlDashboardPro-#{version}.dmg"
  name "Control Dashboard Pro"
  desc "Monitor and control dashboard"
  homepage "https://www.japplis.com/control-dashboard/pro/"

  livecheck do
    url "https://www.japplis.com/control-dashboard/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Control Dashboard Pro.app"

  uninstall quit: "com.japplis.controldashboard.ControlDashboardPro"

  zap trash: [
    "~/Library/Application Support/Japplis/ControlDashboardPro",
    "~/Library/Preferences/com.japplis.controldashboard.plist",
  ]
end
