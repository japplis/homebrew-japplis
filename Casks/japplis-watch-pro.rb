cask "japplis-watch-pro" do
  version "1.6"
  sha256 "383f9b4dab89c870a32155ebe6e79a13a6eede6bf26543edad2f0fc1802dbe3c"

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
