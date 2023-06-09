cask "japplis-pastel" do
  version "1.0"
  sha256 "8da6e44144fddf6434460928711ebbb233101864c9ade3d5f53290aa56f70b5e"

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
