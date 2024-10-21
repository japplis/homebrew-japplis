cask "poster-font" do
  version "1.3"
  sha256 "b3b30f71d06c5f3b346c7cf9ae1285dcb8e1d079b621ff1e0fda1623b2da10aa"

  url "https://www.japplis.com/poster-font/versions/PosterFont-#{version}.dmg"
  name "Poster Font"
  desc "Create outstanding titles"
  homepage "https://www.japplis.com/poster-font/"

  livecheck do
    url "https://www.japplis.com/poster-font/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Poster Font.app"

  uninstall quit: "com.japplis.decoration.PosterFont"

  zap trash: [
    "~/Library/Application Support/Japplis/PosterFont",
    "~/Library/Preferences/com.japplis.decoration.plist",
  ]
end
