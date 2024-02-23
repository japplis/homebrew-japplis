cask "screen-highlighter" do
  version "1.1"
  sha256 "44d458eb89971515ffca2429f7c57df458c809a7a6446670d8561f6e1e03c49e"

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
