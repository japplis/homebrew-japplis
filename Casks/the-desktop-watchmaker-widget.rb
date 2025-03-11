cask "the-desktop-watchmaker-widget" do
  version "1.4"
  sha256 "4543d4680d6af19b13f30ce51d99742b70e2383eaf17b07e539703af60e106a4"

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
