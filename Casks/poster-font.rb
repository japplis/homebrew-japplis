cask "poster-font" do
  version "1.2"
  sha256 "09150ae312405adb7a631af44dee68499d1026a700aa4191e1a9a56152c1dce0"

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
