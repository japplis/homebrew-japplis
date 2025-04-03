cask "japplis-toolbox" do
  version "6.0"
  sha256 "5b6e2ea7547051b5cebb50a1f6b2d1aa8f064dbaa6f1c6a26c00e5bdf40d3e3e"

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
