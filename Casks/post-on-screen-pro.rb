cask "post-on-screen-pro" do
  version "1.1"
  sha256 "983bf3b43090c60179f802b157831dae7985804ac72de7a7f1fa1f983bb6018a"

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
