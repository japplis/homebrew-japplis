cask "decoration" do
  version "5.1"
  sha256 "aa43b74bb70f371540880f6a31fa839e875bb23d5a847b68a2477228e809d165"

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
