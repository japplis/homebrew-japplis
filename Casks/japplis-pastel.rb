cask "japplis-pastel" do
  version "1.2"
  sha256 "65b3a85fd496a81443be3cda13c7b2a382f43a6d056e6086d4e76b7560782dbd"

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
