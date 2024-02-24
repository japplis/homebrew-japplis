cask "directory-crop" do
  version "1.1"
  sha256 "00f4ad05b2af5ac8c6bf4d178a6e58cf7ba9d1444aa07cb90d5d2f95c4ff2b96"

  url "https://www.japplis.com/directory-crop/versions/DirectoryCrop-#{version}.dmg"
  name "Directory Crop"
  desc "Quickly crop images in directory"
  homepage "https://www.japplis.com/directory-crop/"

  livecheck do
    url "https://www.japplis.com/directory-crop/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Directory Crop.app"

  uninstall quit: "com.japplis.screenshotcrop.DirectoryCrop"

  zap trash: [
    "~/Library/Application Support/Japplis/DirectoryCrop",
    "~/Library/Preferences/com.japplis.screenshotcrop.plist",
  ]
end
