cask "dictaphone" do
  version "1.2"
  sha256 "8d75fa75381116a35989769c0aeee8ca57b037e1617721ecce87f5ab04a6d011"

  url "https://www.japplis.com/dictaphone/versions/Dictaphone-#{version}.dmg"
  name "Dictaphone"
  desc "Voice and Audio Recorder"
  homepage "https://www.japplis.com/dictaphone/"

  livecheck do
    url "https://www.japplis.com/dictaphone/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Dictaphone.app"

  uninstall quit: "com.japplis.dictaphone.Dictaphone"

  zap trash: [
    "~/Library/Application Support/Japplis/Dictaphone",
    "~/Library/Preferences/com.japplis.dictaphone.plist",
  ]
end
