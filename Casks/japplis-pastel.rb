cask "japplis-pastel" do
  version "1.3"
  sha256 "4887aedb2374d4791908916dec09bb662aa44c60b627c5628de26e46c4e8034a"

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
