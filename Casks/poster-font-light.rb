cask "poster-font-light" do
  version "1.2"
  sha256 "3e0e5a5c8fd5ef571932678db5d7a937b8551bf837a7b9eb649207091f652f83"

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
