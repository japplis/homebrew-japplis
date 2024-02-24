cask "screenshot-crop" do
  version "1.1"
  sha256 "439e6cc78080878fe0f181bfc334d22bebcfc390f2192bd0b9bbe9af388d8dba"

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
