cask "poster-font" do
  version "1.5"
  sha256 "962dea8f8cea905660d44e56ac2ec670c2b3c2837acdcdf04922314547a666cc"

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
