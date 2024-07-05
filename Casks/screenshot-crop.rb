cask "screenshot-crop" do
  version "1.2"
  sha256 "77fe204d65f8970c874971b480b6467742742b9357a7456516c1c8c6922e557a"

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
