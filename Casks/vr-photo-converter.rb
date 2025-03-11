cask "vr-photo-converter" do
  version "2.3"
  sha256 "072694e1aa350d3ca5bc90ab04eec3879dd01391b9fd2a85d2e0eafeb3413e4f"

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
