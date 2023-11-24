cask "the-desktop-watchmaker" do
  version "3.1"
  sha256 "b50052e700d4e2d39dcc4c9e8d498d7410d3e71bf95e7264688cc55457447320"

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
