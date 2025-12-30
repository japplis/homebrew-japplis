cask "tree-data-explorer" do
  version "1.4.1"
  sha256 "8749d6a60fe3a04d813358d0319143bbe73cd64d047f63009db1540d1702c8e1"

  url "https://www.japplis.com/tree-data-explorer/versions/TreeDataExplorer-#{version}.dmg"
  name "Tree Data Explorer"
  desc "View XML, Yaml, JSON as tree"
  homepage "https://www.japplis.com/tree-data-explorer/"

  livecheck do
    url "https://www.japplis.com/tree-data-explorer/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Tree Data Explorer.app"

  uninstall quit: "com.japplis.treedataexplorer.TreeDataExplorer"

  zap trash: [
    "~/Library/Application Support/Japplis/TreeDataExplorer",
    "~/Library/Preferences/com.japplis.treedataexplorer.plist",
  ]
end
