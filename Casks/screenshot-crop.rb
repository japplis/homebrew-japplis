cask "screenshot-crop" do
  version "1.3"
  sha256 "ac2d0cbe70738ea02cbf2f3b3698aae1f5266614f24642b8953b7ffd3a8816e4"

  url "https://www.japplis.com/screenshot-crop/versions/ScreenshotCrop-#{version}.dmg"
  name "Screenshot Crop"
  desc "Quickly crop screenshots"
  homepage "https://www.japplis.com/screenshot-crop/"

  livecheck do
    url "https://www.japplis.com/screenshot-crop/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Screenshot Crop.app"

  uninstall quit: "com.japplis.screenshotcrop.ScreenshotCrop"

  zap trash: [
    "~/Library/Application Support/Japplis/ScreenshotCrop",
    "~/Library/Preferences/com.japplis.screenshotcrop.plist",
  ]
end
