cask "japplis-clipboard-history-pro" do
  version "1.2"
  sha256 "d63257752bab55048de12e7f853eec38195dbfc5a1950eabf2785d16915688c5"

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
