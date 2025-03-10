cask "jlearnit" do
  version "6.8"
  sha256 "79280248c4b76021f7a6cafeb766e78ec48362ae25d299f7bdff91c18cf56a7c"

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
