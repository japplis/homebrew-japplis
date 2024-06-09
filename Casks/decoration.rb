cask "decoration" do
  version "5.4"
  sha256 "34cf2ec675f643050f110b994da7e1a06169f709c791ddb73666420483e67ba3"

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
