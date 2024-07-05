cask "directory-crop" do
  version "1.2"
  sha256 "9dc23df4f3e049f1bb2ce621138d2ba7b282d5a3e601df05a5aa51178f658591"

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
