cask "post-on-screen-pro" do
  version "1.4"
  sha256 "a9d3275cb5ecfdc2db8d3d942521103d4e7617b23ea19b38de43a649c831b40e"

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
