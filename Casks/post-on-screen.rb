cask "post-on-screen" do
  version "1.0"
  sha256 "41a9ce4f93365cb0d30f9decaf0599dfdd0462fac89ba16d4c2f3a0fe4df41d8"

  url "https://www.japplis.com/post-on-screen/versions/PostOnScreen-#{version}.dmg"
  name "Post On Screen"
  desc "Display text on your screens"
  homepage "https://www.japplis.com/post-on-screen/"

  livecheck do
    url "https://www.japplis.com/post-on-screen/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Post On Screen.app"

  uninstall quit: "com.japplis.postonscreen.PostOnScreen"

  zap trash: [
    "~/Library/Application Support/Japplis/PostOnScreen",
    "~/Library/Preferences/com.japplis.postonscreen.plist",
  ]
end
