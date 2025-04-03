cask "jlearnit" do
  version "6.9"
  sha256 "29b378765a7a71d7d3128812a9461fecc8f6feaaa5f79c67219f72df385b22c6"

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
