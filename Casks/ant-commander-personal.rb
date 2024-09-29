cask "ant-commander-personal" do
  version "4.14"
  sha256 "2d282d380782818a472a5123149d3f174a08fc065f636ea1cd15260e4331cf75"

  url "https://www.antcommander.com/personal/versions/AntCommander-#{version}.dmg"
  name "Ant Commander Personal"
  desc "Personal file manager"
  homepage "https://www.antcommander.com/personal/"

  livecheck do
    url "https://www.antcommander.com/personal/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Ant Commander Personal.app"

  uninstall quit: "com.japplis.antcommander.AntCommander"

  zap trash: [
    "~/Library/Application Support/Japplis/AntCommander",
    "~/Library/Preferences/com.japplis.antcommander.plist",
  ]
end
