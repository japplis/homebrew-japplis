cask "screenshot-crop" do
  version "1.0"
  sha256 "53fe10eeb7bfc883b02a4180d95a40bdd67b2341d76194647eb37ed3f1c4b3cf"

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
