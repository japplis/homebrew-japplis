cask "tree-data-explorer" do
  version "1.2.5"
  sha256 "781833164e3170ad4c3f773547404a62f69445e0822970866028a1c953f7e27e"

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
