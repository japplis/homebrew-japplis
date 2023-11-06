cask "japplis-pastel" do
  version "1.0"
  sha256 "99a948e69197e06e97f8107d58c06f5c344ae0e2419d6e987943e623f59aacc8"

  url "https://www.japplis.com/decoration/pastel/versions/Pastel-#{version}.dmg"
  name "Japplis Pastel"
  desc "Image editor with multiple effects"
  homepage "https://www.japplis.com/decoration/pastel/"

  livecheck do
    url "https://www.japplis.com/decoration/pastel/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Pastel.app"

  uninstall quit: "com.japplis.decoration.Pastel"

  zap trash: [
    "~/Library/Application Support/Japplis/Pastel",
    "~/Library/Preferences/com.japplis.decoration.plist",
  ]
end
