cask "japplis-watch" do
  version "1.10"
  sha256 "c2e36010a51d962e2be7f2a51afb3e06266f65a1b28fcd566f129774691a8c70"

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
