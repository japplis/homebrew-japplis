cask "the-desktop-watchmaker" do
  version "3.3"
  sha256 "6f804d5d408d60bd891141132b31bbdde652b3918b7c4f415ee44dccfb3d08f9"

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
