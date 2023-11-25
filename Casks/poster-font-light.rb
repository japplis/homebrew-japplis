cask "poster-font-light" do
  version "1.0"
  sha256 "95d6af20e0b629c16171d49e6433bebf7c91fb20f0dbe36e461a4dc1e0478113"

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
