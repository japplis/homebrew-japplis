cask "post-on-screen-pro" do
  version "1.0"
  sha256 "b5626f8741a1ea5670a7ada68d4d2b8e6cdec6567f781f675786268530d7ccdc"

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
