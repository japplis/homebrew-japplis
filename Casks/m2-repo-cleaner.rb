cask "m2-repo-cleaner" do
  version "1.0"
  sha256 "e7f35c1f9ed4dcd27564748d57229a700590b348403f03a90f7a078cb6e923d8"

  url "https://www.antcommander.com/m2-repo-cleaner/versions/M2RepoCleaner-#{version}.dmg"
  name "M2 Repo Cleaner"
  desc "Clean old files in Maven local repository"
  homepage "https://www.antcommander.com/m2-repo-cleaner/"

  livecheck do
    url "https://www.antcommander.com/m2-repo-cleaner/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "M2 Repo Cleaner.app"

  uninstall quit: "com.japplis.antcommander.m2repocleaner.M2RepoCleaner"

  zap trash: [
    "~/Library/Application Support/Japplis/M2RepoCleaner",
    "~/Library/Preferences/com.japplis.antcommander.m2repocleaner.plist",
  ]
end
