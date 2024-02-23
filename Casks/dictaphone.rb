cask "dictaphone" do
  version "1.1"
  sha256 "058d7e45237ddbb39dc7cfa3aecaa589353bab588553bc72bcc2992e9b640cb3"

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
