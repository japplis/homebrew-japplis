cask "discotheek" do
  version "1.5"
  sha256 "eedb4bcecc4fda5ff6a943337feaf8c80ff82f40108bd199a20ee7c3c3c7f44c"

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
