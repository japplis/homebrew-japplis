cask "the-desktop-watchmaker-widget" do
  version "1.0"
  sha256 "48e741e267ce1e8e948998875ad40ee2ae4f831719b7cac4d6d285c418fc9403"

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
