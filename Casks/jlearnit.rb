cask "jlearnit" do
  version "6.5"
  sha256 "4792a703c23617831da29b97b505560f5cdddefa7590dc67c407d6ff62275c2a"

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
