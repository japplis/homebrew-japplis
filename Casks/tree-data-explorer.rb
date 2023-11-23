cask "tree-data-explorer" do
  version "1.0"
  sha256 "9c745f8a3bfa44cbab045438b8bc5aa5c52df47394933b1fdb32accec05527d2"

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
