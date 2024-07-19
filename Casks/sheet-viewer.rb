cask "sheet-viewer" do
  version "1.2"
  sha256 "077683b6312e39c7c4a532dbeaae797257cc9b264825d5129b38f3a92fc80123"

  url "https://www.japplis.com/sheet-viewer/versions/SheetViewer-#{version}.dmg"
  name "Sheet Viewer"
  desc "View an Excel sheet always on top and transparent"
  homepage "https://www.japplis.com/sheet-viewer/"

  livecheck do
    url "https://www.japplis.com/sheet-viewer/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Sheet Viewer.app"

  uninstall quit: "com.japplis.sheetviewer.SheetViewer"

  zap trash: [
    "~/Library/Application Support/Japplis/SheetViewer",
    "~/Library/Preferences/com.japplis.sheetviewer.plist",
  ]
end
