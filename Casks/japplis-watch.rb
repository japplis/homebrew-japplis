cask "japplis-watch" do
  version "1.5"
  sha256 "a166a4adbba9edff3444cb5d539014e9852ff5d46afbe777ec45cad142457511"

  url "https://www.japplis.com/watch/versions/Watch-#{version}.dmg"
  name "Japplis Watch"
  desc "Clock / Timer / Stopwatch / Alarm / Time Zones / More"
  homepage "https://www.japplis.com/watch/"

  livecheck do
    url "https://www.japplis.com/watch/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Watch.app"

  uninstall quit: "com.japplis.watch.Watch"

  zap trash: [
    "~/Library/Application Support/Japplis/Watch",
    "~/Library/Preferences/com.japplis.watch.plist",
  ]
end
