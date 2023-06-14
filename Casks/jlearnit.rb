cask "jlearnit" do
  version "6.4"
  sha256 "a00dd83c8e7282cda36a8c2a82f9caf3060d01b7598cea83965f81828f70b4ea"

  url "https://www.jlearnit.com/versions/JLearnIt-#{version}.dmg"
  name "JLearnIt"
  desc "Multilingual dictionary"
  homepage "https://www.jlearnit.com/"

  livecheck do
    url "https://www.jlearnit.com/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "JLearnIt.app"

  uninstall quit: "com.japplis.jlearnit.JLearnIt"

  zap trash: [
    "~/Library/Application Support/Japplis/JLearnIt",
    "~/Library/Preferences/com.japplis.jlearnit.plist",
  ]
end
