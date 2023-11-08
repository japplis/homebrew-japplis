cask "dictaphone" do
  version "1.0"
  sha256 "bc1ea1328705ea9d8f3a802610cf83c39635df476c4cee273ecebd3ffee877d8"

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
