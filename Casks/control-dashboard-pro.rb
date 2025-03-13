cask "control-dashboard-pro" do
  version "1.2"
  sha256 "074542bf5370373dcba2ca4e6d64b1ab5a6f770495132c93c4a6096010572b0f"

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
