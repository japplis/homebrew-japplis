cask "sheet-stats" do
  version "1.1"
  sha256 "af9ca815eb24965848e9e163ea0ba242689a46e396171dcb7aa2b37e8767f8f5"

  url "https://www.japplis.com/sheet-stats/versions/SheetStats-#{version}.dmg"
  name "Sheet Stats"
  desc "Statistics and score of Excel workbook"
  homepage "https://www.japplis.com/sheet-stats/"

  livecheck do
    url "https://www.japplis.com/sheet-stats/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Sheet Stats.app"

  uninstall quit: "com.japplis.sheetstats.SheetStats"

  zap trash: [
    "~/Library/Application Support/Japplis/SheetStats",
    "~/Library/Preferences/com.japplis.sheetstats.plist",
  ]
end
