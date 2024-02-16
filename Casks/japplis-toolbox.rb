cask "japplis-toolbox" do
  version "5.7"
  sha256 "78a16da2b550980a732476d687a776f970394b427d79579c326d365600c6f04b"

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
