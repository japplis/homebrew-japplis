cask "ant-commander-personal" do
  version "4.11"
  sha256 "f18f0339cc24f02bcdceac7effdc3b57941871c1a3c528a486bd0b724a8a89a6"

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
