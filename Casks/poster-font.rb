cask "poster-font" do
  version "1.0"
  sha256 "66d2b8a60239c0f0929abb5970c18a91a33311f3f91e5d616c5728c0ed1ae84c"

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
