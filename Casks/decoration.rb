cask "decoration" do
  version "5.2"
  sha256 "1d3541885ceb50d146b2fb06734d76bf861442948854a6de416d4fe4da79f879"

  url "https://www.japplis.com/decoration/versions/Decoration-#{version}.dmg"
  name "Decoration"
  desc "Image Editor for Batch Processing"
  homepage "https://www.japplis.com/decoration/"

  livecheck do
    url "https://www.japplis.com/decoration/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Decoration.app"

  uninstall quit: "com.japplis.decoration.Decoration"

  zap trash: [
    "~/Library/Application Support/Japplis/Decoration",
    "~/Library/Preferences/com.japplis.decoration.plist",
  ]
end
