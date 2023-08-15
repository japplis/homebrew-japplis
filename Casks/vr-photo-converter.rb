cask "vr-photo-converter" do
  version "2.0"
  sha256 "f411e7915f4a5f19886015c31997094fc1f2d290a523182669f88f689d30ecc4"

  url "https://www.japplis.com/virtual-reality/vr-photo-converter/versions/VRPhotoConverter-#{version}.dmg"
  name "VR Photo Converter"
  desc "Convert VR180 images to one image"
  homepage "https://www.japplis.com/virtual-reality/vr-photo-converter/"

  livecheck do
    url "https://www.japplis.com/virtual-reality/vr-photo-converter/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "VR Photo Converter.app"

  uninstall quit: "com.japplis.vrphotoconverter.VRPhotoConverter"

  zap trash: [
    "~/Library/Application Support/Japplis/VRPhotoConverter",
    "~/Library/Preferences/com.japplis.vrphotoconverter.plist",
  ]
end
