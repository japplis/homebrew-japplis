cask "control-dashboard-pro" do
  version "1.0"
  sha256 "e8b47fae9f6c647a4eef1b09598fb5c39ee6ba497df1a1e361ffbc95981af45d"

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
