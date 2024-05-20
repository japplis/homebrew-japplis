cask "japplis-watch" do
  version "1.9"
  sha256 "bc15762b4dc51d7c0db55c7fd4ba791d1905a0cd0b004a8b6a77098624d8add0"

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
