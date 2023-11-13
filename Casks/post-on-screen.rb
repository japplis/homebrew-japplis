cask "post-on-screen" do
  version "1.1"
  sha256 "27aae104cfcdf1c30aeba175a8825b3a0fafdf9026bfc53ba953fdde13d45d6c"

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
