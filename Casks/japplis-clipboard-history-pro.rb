cask "japplis-clipboard-history-pro" do
  version "1.3"
  sha256 "11a8633ff3d6544af4b6b183640399962b10261d291696ee8ffb86ec8a05c9da"

  url "https://www.japplis.com/clipboard-history/pro/versions/ClipboardHistoryPro-#{version}.dmg"
  name "Japplis Clipboard History Pro"
  desc "Show Text Clipboard History"
  homepage "https://www.japplis.com/clipboard-history/pro/"

  livecheck do
    url "https://www.japplis.com/clipboard-history/pro/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Clipboard History Pro.app"

  uninstall quit: "com.japplis.clipboardhistory.ClipboardHistoryPro"

  zap trash: [
    "~/Library/Application Support/Japplis/ClipboardHistoryPro",
    "~/Library/Preferences/com.japplis.clipboardhistory.plist",
  ]
end
