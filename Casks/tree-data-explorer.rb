cask "tree-data-explorer" do
  version "1.4"
  sha256 "7de5a5c1d0b5e2a3cd586a1ed154a27ec675675da241061db5001e4b87e7506d"

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
