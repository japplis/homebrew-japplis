cask "japplis-watch-pro" do
  version "1.8"
  sha256 "e5d7850c4bf841c4093eb40c88f744cc475f3768a0ca0336abeca22528e1d0b6"

  url "https://www.japplis.com/watch/pro/versions/WatchPro-#{version}.dmg"
  name "Japplis Watch Pro"
  desc "Clock / Timer / Stopwatch / Alarm / Time Zones / More"
  homepage "https://www.japplis.com/watch/pro/"

  livecheck do
    url "https://www.japplis.com/watch/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Watch Pro.app"

  uninstall quit: "com.japplis.watch.WatchPro"

  zap trash: [
    "~/Library/Application Support/Japplis/WatchPro",
    "~/Library/Preferences/com.japplis.watch.plist",
  ]
end
