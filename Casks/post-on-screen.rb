cask "post-on-screen" do
  version "1.2"
  sha256 "7243a195670390b42c6837dd488dc934c3991945133422eed88819251316e320"

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
