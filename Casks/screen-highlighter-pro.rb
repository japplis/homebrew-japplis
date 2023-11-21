cask "screen-highlighter-pro" do
  version "1.0"
  sha256 "5d29665de614aa16ee09efae91792e8ff87a013bc91715067935e8bfc5323b97"

  url "https://www.japplis.com/screen-highlighter/pro/versions/ScreenHighlighterPro-#{version}.dmg"
  name "Screen Highlighter Pro"
  desc "Highlight parts of the screen"
  homepage "https://www.japplis.com/screen-highlighter/pro/"

  livecheck do
    url "https://www.japplis.com/screen-highlighter/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Screen Highlighter Pro.app"

  uninstall quit: "com.japplis.screenhighlighter.ScreenHighlighterPro"

  zap trash: [
    "~/Library/Application Support/Japplis/ScreenHighlighterPro",
    "~/Library/Preferences/com.japplis.screenhighlighter.plist",
  ]
end
