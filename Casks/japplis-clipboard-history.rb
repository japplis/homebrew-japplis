cask "japplis-clipboard-history" do
  version "1.0"
  sha256 "64557ca3e8c1af236e8a908fbff4678ac22a6ac5d5929c3ad643f615b2c557dd"

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
