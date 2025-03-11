cask "discotheek" do
  version "1.6"
  sha256 "f71bf325cd2191e2f379000c6b56ea381bd1f81d94049f4a31f55f6283d124dc"

  url "https://www.japplis.com/discotheek/versions/Discotheek-#{version}.dmg"
  name "Discotheek"
  desc "Use your monitor(s) as spotlight"
  homepage "https://www.japplis.com/discotheek/"

  livecheck do
    url "https://www.japplis.com/discotheek/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Discotheek.app"

  uninstall quit: "com.japplis.discotheek.Discotheek"

  zap trash: [
    "~/Library/Application Support/Japplis/Discotheek",
    "~/Library/Preferences/com.japplis.discotheek.plist",
  ]
end
