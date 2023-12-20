cask "screen-highlighter" do
  version "1.0"
  sha256 "82cc22634f72592a07a488eb15c8bb45a7898cc833d813e4360b79c752e69114"

  url "https://www.japplis.com/screen-highlighter/versions/ScreenHighlighter-#{version}.dmg"
  name "Screen Highlighter"
  desc "Highlight parts of the screen"
  homepage "https://www.japplis.com/screen-highlighter/"

  livecheck do
    url "https://www.japplis.com/screen-highlighter/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Screen Highlighter.app"

  uninstall quit: "com.japplis.screenhighlighter.ScreenHighlighter"

  zap trash: [
    "~/Library/Application Support/Japplis/ScreenHighlighter",
    "~/Library/Preferences/com.japplis.screenhighlighter.plist",
  ]
end
