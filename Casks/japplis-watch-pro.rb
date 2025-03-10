cask "japplis-watch-pro" do
  version "1.10"
  sha256 "87b4e124d35d7ac26ce5d57cf3c90a061893397988e6e0bcaddfe159339b8855"

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
