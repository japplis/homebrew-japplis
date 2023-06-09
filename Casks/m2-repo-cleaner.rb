cask "m2-repo-cleaner" do
  version "1.0-beta"
  sha256 "42ac75c68da0483fdebca1bf37833fd4b483872d5f02553cb5923a84941e20b8"

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
