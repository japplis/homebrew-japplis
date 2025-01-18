cask "decoration" do
  version "5.6"
  sha256 "1dc0797971b6f137d7926728c9d0f4f9e7ee48af1773b1576cdfc289abf4dee9"

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
