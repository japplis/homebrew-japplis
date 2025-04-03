cask "control-dashboard" do
  version "1.2"
  sha256 "a2b76945a0694c268f602e564efcfb0b05289d6175c0ddfc56fb45951e1ec64a"

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
