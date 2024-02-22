cask "screen-highlighter-pro" do
  version "1.1"
  sha256 "c05b88a4b25a7d2cbfaba97ee79e7478cc5f97832a88d65d78a5044503e64755"

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
