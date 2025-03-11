cask "tree-data-explorer" do
  version "1.3"
  sha256 "56d79b9f960128f2d23a82c90f0d17cdc1ca385268bbcec6704156a6f79262f2"

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
