cask "sheet-viewer" do
  version "1.1"
  sha256 "8d8c7df267c0b908708529702d3ca4b4806e34de5ca0fec4971ebe4482d90c4c"

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
