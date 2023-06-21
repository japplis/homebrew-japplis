cask "the-desktop-watchmaker" do
  version "3.0"
  sha256 "d6cda7d31361098bad7fd9dda3a02f35213dfc9d896b5a73d7a984f2b3d18cd6"

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
