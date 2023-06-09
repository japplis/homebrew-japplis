cask "discotheek" do
  version "1.3"
  sha256 "00c31f6c5391d4c193a3e9d25ad0bd5fa69a86fa321731f1316ffd510fa57fe1"

  url "https://www.japplis.com/discotheek/versions/Discotheek-#{version}.dmg"
  name "Discotheek"
  desc "Use your monitor(s) as spotlight"
  homepage "https://www.japplis.com/discotheek/"

  livecheck do
    url "https://www.japplis.com/discotheek/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Discotheek.app"

  uninstall quit: "com.japplis.discotheek.Discotheek"

  zap trash: [
    "~/Library/Application Support/Japplis/Discotheek",
    "~/Library/Preferences/com.japplis.discotheek.plist",
  ]
end
