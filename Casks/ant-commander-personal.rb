cask "ant-commander-personal" do
  version "4.8"
  sha256 "dca68de2cb4984e1156f2cecf43619cf87f0a92d5da435e160e94badb5429b57"

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
