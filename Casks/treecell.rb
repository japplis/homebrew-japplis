cask "treecell" do
  version "1.2"
  sha256 "2d00ce2803cc67988cdcb13c8f4bd8df2012786354c50fa3ff056f03bdae331b"

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
