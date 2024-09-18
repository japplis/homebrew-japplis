cask "the-desktop-watchmaker-widget" do
  version "1.3"
  sha256 "6a36cd5a24873a373fc898b1782a5939c8ec5319da8d94adb5159f50d83773a6"

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
