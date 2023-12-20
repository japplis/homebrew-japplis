cask "japplis-clipboard-history-pro" do
  version "1.0"
  sha256 "8f23bb56f7d3dd1efe30cb739735fd5282acdb66ceec5a8e91c234589a5f54ad"

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
