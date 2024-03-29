cask "vr-photo-converter" do
  version "2.1"
  sha256 "ae3452f3ca7b225154dbbff9016c1bdfbaf8267446a0d74aad2a2a980eb2474b"

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
