cask "the-desktop-watchmaker-widget" do
  version "1.2"
  sha256 "7b0f28348d123ff7f7cde6d5dd4351e6dd8c57142bfbb4a7b3d6dd50fab24ee1"

  url "https://www.japplis.com/desktop-watchmaker/widget/versions/DesktopWatchmakerWidget-#{version}.dmg"
  name "The Desktop Watchmaker Widget"
  desc "View WatchMaker watches on your Desktop"
  homepage "https://www.japplis.com/desktop-watchmaker/widget/"

  livecheck do
    url "https://www.japplis.com/desktop-watchmaker/widget/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "The Desktop Watchmaker Widget.app"

  uninstall quit: "com.japplis.desktopwatchmaker.DesktopWatchmakerWidget"

  zap trash: [
    "~/Library/Application Support/Japplis/DesktopWatchmakerWidget",
    "~/Library/Preferences/com.japplis.desktopwatchmaker.plist",
  ]
end
