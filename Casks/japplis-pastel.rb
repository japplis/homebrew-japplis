cask "japplis-pastel" do
  version "1.1"
  sha256 "4ab7ad2392043bdfd9b84799956bc4d06b6606566b7b2bc2aa25c83a88c2e6e5"

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
