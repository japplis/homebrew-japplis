cask "japplis-toolbox" do
  version "5.5"
  sha256 "0f79437b3bc0f7194b8cd63e19dc17c68694e59f139656f58476fd8a1079a045"

  url "https://www.japplis.com/toolbox/versions/Toolbox-#{version}.dmg"
  name "Japplis Toolbox"
  desc "Developer text toolbox"
  homepage "https://www.japplis.com/toolbox/"

  livecheck do
    url "https://www.japplis.com/toolbox/version.txt"
    regex(/^[0-9\.a-z-]+$/i)
  end

  app "Japplis Toolbox.app"

  uninstall quit: "com.japplis.toolbox.Toolbox"

  zap trash: [
    "~/Library/Application Support/Japplis/Toolbox",
    "~/Library/Preferences/com.japplis.toolbox.plist",
  ]
end