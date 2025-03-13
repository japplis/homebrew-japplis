cask "japplis-clipboard-history" do
  version "1.2"
  sha256 "e0d0b10174de411ec9ea80670c47f2a7cd0a974c5a3ffcf1e274c40a747f864a"

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
