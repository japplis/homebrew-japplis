cask "japplis-toolbox" do
  version "6.1.1"
  sha256 "1389c841521ebfc9c3db74e22006ac1905ef467cccf5bf5958515d8914f2c799"

  url "https://www.japplis.com/toolbox/versions/Toolbox-#{version}.dmg"
  name "Japplis Toolbox"
  desc "Developer text toolbox"
  homepage "https://www.japplis.com/toolbox/"

  livecheck do
    url "https://www.japplis.com/toolbox/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Toolbox.app"

  uninstall quit: "com.japplis.toolbox.Toolbox"

  zap trash: [
    "~/Library/Application Support/Japplis/Toolbox",
    "~/Library/Preferences/com.japplis.toolbox.plist",
  ]
end
