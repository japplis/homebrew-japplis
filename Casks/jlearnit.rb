cask "jlearnit" do
  version "6.4"
  sha256 "bb5d2d668fc020645b310b8db59a4a57a534b3c0f018ce3e5a3a5abc591c2ccb"

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
