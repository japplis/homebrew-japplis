cask "japplis-toolbox" do
  version "5.9"
  sha256 "98314bf438446cb3f14b4b40df8e3c224c5e82850d72b036f202d8e56192b6c3"

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
