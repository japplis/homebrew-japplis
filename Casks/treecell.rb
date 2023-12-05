cask "treecell" do
  version "1.0"
  sha256 "e5d54f6aa5be511944fef8922fb713866303748fc38b0dc0b184cb6d39238685"

  url "https://www.japplis.com/treecell/versions/Treecell-#{version}.dmg"
  name "Treecell"
  desc "View spreadsheets as hierarchy"
  homepage "https://www.japplis.com/treecell/"

  livecheck do
    url "https://www.japplis.com/treecell/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Treecell.app"

  uninstall quit: "com.japplis.treecell.Treecell"

  zap trash: [
    "~/Library/Application Support/Japplis/Treecell",
    "~/Library/Preferences/com.japplis.treecell.plist",
  ]
end
