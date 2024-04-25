cask "vr-photo-converter" do
  version "2.2"
  sha256 "c21b4646669d83f9bee1d28a2b5239768493c9be65837f050bb14c345902f866"

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
