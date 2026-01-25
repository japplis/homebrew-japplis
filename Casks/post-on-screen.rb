cask "post-on-screen" do
  version "1.5"
  sha256 "ce20bc9ec316a8ff4c47c14ede5bdbbf659efd8d16a9cfdd8a8cfcd900b560ac"

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
