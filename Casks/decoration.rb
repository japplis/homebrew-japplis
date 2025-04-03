cask "decoration" do
  version "5.8"
  sha256 "103917b95b6acc10950beca7a4379430f88e716ae13db1b5e2531bda64f2e476"

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
