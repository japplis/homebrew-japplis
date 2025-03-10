cask "post-on-screen" do
  version "1.3"
  sha256 "0e37af11ff248acbf438792c720c1cb2ecbd6573108a749bf44a37fbefaf5990"

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
