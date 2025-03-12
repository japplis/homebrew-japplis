cask "poster-font-light" do
  version "1.3"
  sha256 "7908233581415cb93345bc79c7b6d5572af953c572fa747f5517786ce53a2eab"

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
