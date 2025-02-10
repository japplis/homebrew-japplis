cask "treecell" do
  version "1.4"
  sha256 "b2e59185e6249b7ee80b1eb169e1a55f2941521cb85a6e8cf7849ae7f550ff8a"

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
