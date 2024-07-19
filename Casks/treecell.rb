cask "treecell" do
  version "1.3"
  sha256 "d96921e2202d04b80b4c9759f9ba9fc5c8e8653996334f9793a9b6721a60291d"

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
