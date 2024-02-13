cask "the-desktop-watchmaker" do
  version "3.2"
  sha256 "755a77abc43d24991f2fe57cfd034f83968be614a89263c2b30ad2dabd8dbf5d"

  url "https://www.japplis.com/desktop-watchmaker/versions/DesktopWatchmaker-#{version}.dmg"
  name "The Desktop Watchmaker"
  desc "Desktop software to create and adapt WatchMaker watch faces"
  homepage "https://www.japplis.com/desktop-watchmaker/"

  livecheck do
    url "https://www.japplis.com/desktop-watchmaker/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "The Desktop Watchmaker.app"

  uninstall quit: "com.japplis.desktopwatchmaker.DesktopWatchmaker"

  zap trash: [
    "~/Library/Application Support/Japplis/DesktopWatchmaker",
    "~/Library/Preferences/com.japplis.desktopwatchmaker.plist",
  ]
end
