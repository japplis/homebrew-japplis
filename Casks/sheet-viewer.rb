cask "sheet-viewer" do
  version "1.0"
  sha256 "16bf7dd7100b433a3467f88d26c32dba02aad4fe67ce9065ade50aad64b06239"

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
