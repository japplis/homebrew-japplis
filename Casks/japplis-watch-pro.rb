cask "japplis-watch-pro" do
  version "1.5"
  sha256 "df57ee6961b7b3b0fddf83d290c60bc87a4b27508dde6db5548696a4e37af85d"

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
