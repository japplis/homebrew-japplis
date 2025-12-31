cask "ant-commander-personal" do
  version "6.0"
  sha256 "5ffe824f5c7c4915f9075103e5119a5d81ed674ce7f42bbc26200a015ec89cbf"

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
