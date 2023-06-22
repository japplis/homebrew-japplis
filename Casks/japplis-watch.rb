cask "japplis-watch" do
  version "1.6"
  sha256 "46261d3cdb75a36985a3c170aa94999f64ddb5716e72b29c332ef1dcdf44f010"

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
