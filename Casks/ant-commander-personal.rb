cask "ant-commander-personal" do
  version "6.2"
  sha256 "81545619caa38259f282fe361c36dd5783243ee6550871789bd0a3c7e765747c"

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
