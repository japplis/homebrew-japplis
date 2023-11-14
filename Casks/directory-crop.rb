cask "directory-crop" do
  version "1.0"
  sha256 "83a25c04f8c0330e9815e7fcf488f7438d08532aa5fa7f77532a852deed23690"

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
