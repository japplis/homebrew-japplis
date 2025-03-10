cask "post-on-screen-pro" do
  version "1.3"
  sha256 "ca5ead4138cd141f425d83897674f90d0010cd77012ce482663547bdbdd340f3"

  url "https://www.japplis.com/post-on-screen/pro/versions/PostOnScreenPro-#{version}.dmg"
  name "Post On Screen Pro"
  desc "Display texts and images on top of your screens"
  homepage "https://www.japplis.com/post-on-screen/pro/"

  livecheck do
    url "https://www.japplis.com/post-on-screen/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Post On Screen Pro.app"

  uninstall quit: "com.japplis.postonscreen.PostOnScreenPro"

  zap trash: [
    "~/Library/Application Support/Japplis/PostOnScreenPro",
    "~/Library/Preferences/com.japplis.postonscreen.plist",
  ]
end
