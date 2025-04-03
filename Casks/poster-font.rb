cask "poster-font" do
  version "1.6"
  sha256 "cd7cdaf3c1c1b83a03b7686335cea605e4db2f0404b0e43470bd7119f37873c0"

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
