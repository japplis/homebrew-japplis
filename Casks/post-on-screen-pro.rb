cask "post-on-screen-pro" do
  version "1.2"
  sha256 "8590c8c9c4df093de950451c2ef82a4c00ebfb01f887a154e564232fd490370f"

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
