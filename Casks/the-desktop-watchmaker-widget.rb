cask "the-desktop-watchmaker-widget" do
  version "1.1"
  sha256 "a6bef23d77af4fa11d975e7fd700d0c6d87c639f82fcf2eb1b7054fb2cb59d05"

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
