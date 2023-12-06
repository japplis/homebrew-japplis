cask "sheet-stats" do
  version "1.0"
  sha256 "487fa173f14bd189a1091a0d6b8c92eeec240f55f8f5057642907c5955ef9b45"

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
