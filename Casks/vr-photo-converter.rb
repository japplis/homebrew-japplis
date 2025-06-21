cask "vr-photo-converter" do
  version "3.0"
  sha256 "b24f29d720eb67e8a53c33984c0372d6203c3d74de610e88b0016905eb418198"

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
