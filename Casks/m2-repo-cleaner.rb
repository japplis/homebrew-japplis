cask "m2-repo-cleaner" do
  version "1.1"
  sha256 "65fc5566efaa1886d6f445e9ef1367a0a422dec18bb742de1f5026d3a680fa5c"

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
