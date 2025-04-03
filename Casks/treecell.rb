cask "treecell" do
  version "1.5"
  sha256 "2b5415bd23a4509a35aea8f2d761898862f164e51414967c1caecf4349ef5033"

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
