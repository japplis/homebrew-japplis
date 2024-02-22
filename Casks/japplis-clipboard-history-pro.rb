cask "japplis-clipboard-history-pro" do
  version "1.1"
  sha256 "264d6bae65493b95bc0644b871559a99e33cc8674358e5eed20b0348c7ef80ea"

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
