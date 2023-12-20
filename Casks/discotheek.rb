cask "discotheek" do
  version "1.4"
  sha256 "be461baa3362a7d4610db2de8f8d24d2788b7bfbc12be1c077b0e22d9eedef57"

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
