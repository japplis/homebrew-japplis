cask "japplis-clipboard-history" do
  version "1.1"
  sha256 "f195850b17671ed41aaf64f9749cf05f6d9f9b28bfa4177c7c137f909f2e1000"

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
