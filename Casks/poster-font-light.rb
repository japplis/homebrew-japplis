cask "poster-font-light" do
  version "1.1"
  sha256 "07ad56afaf49c3f1fb840666b3f8e1fe7e7701d100067f1796468b9266ae9755"

  url "https://www.japplis.com/poster-font/light/versions/PosterFontLight-#{version}.dmg"
  name "Poster Font Light"
  desc "Easily create beautiful titles"
  homepage "https://www.japplis.com/poster-font/light/"

  livecheck do
    url "https://www.japplis.com/poster-font/light/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Poster Font Light.app"

  uninstall quit: "com.japplis.decoration.PosterFontLight"

  zap trash: [
    "~/Library/Application Support/Japplis/PosterFontLight",
    "~/Library/Preferences/com.japplis.decoration.plist",
  ]
end
