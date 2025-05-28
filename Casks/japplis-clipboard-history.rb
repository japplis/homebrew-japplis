cask "japplis-clipboard-history" do
  version "1.3"
  sha256 "026193eebd93c88f8a8d28a6b5723d439d69ed5f2e8a2ff318386c77ef3c22d0"

  url "https://www.japplis.com/clipboard-history/versions/ClipboardHistory-#{version}.dmg"
  name "Japplis Clipboard History"
  desc "Show Text Clipboard History"
  homepage "https://www.japplis.com/clipboard-history/"

  livecheck do
    url "https://www.japplis.com/clipboard-history/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Clipboard History.app"

  uninstall quit: "com.japplis.clipboardhistory.ClipboardHistory"

  zap trash: [
    "~/Library/Application Support/Japplis/ClipboardHistory",
    "~/Library/Preferences/com.japplis.clipboardhistory.plist",
  ]
end
