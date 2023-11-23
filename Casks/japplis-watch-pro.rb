cask "japplis-watch-pro" do
  version "1.7"
  sha256 "3a180251795689ff11aad558adebc0794903e5cb30e6fb270e328f7ae3dbc143"

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
