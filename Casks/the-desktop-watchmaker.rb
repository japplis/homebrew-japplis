cask "the-desktop-watchmaker" do
  version "3.4"
  sha256 "25b9f78f04994c41ce5eac566412310d968db77ade607f3f6ed35dc56573ce5f"

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
