cask "japplis-watch" do
  version "1.8"
  sha256 "1b8c3de529cc2a4254ba8e347fd6592406897059ab94b174e7d2b1e9d5635eff"

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
