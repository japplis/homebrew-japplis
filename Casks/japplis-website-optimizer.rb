cask "japplis-website-optimizer" do
  version "4.1"
  sha256 "7142ea6d7e60c07154f85fa93121fb110ee1ede37dd5aef10832fe75acc22782"

  url "https://www.japplis.com/website-optimizer/versions/WebsiteOptimizer-#{version}.dmg"
  name "Japplis Website Optimizer"
  desc "Automate & reduce the size of your web site"
  homepage "https://www.japplis.com/website-optimizer/"

  livecheck do
    url "https://www.japplis.com/website-optimizer/version.txt"
    regex(/^[0-9a-z.-]+$/i)
  end

  app "Japplis Website Optimizer.app"

  uninstall quit: "com.japplis.websiteoptimizer.WebsiteOptimizer"

  zap trash: [
    "~/Library/Application Support/Japplis/WebsiteOptimizer",
    "~/Library/Preferences/com.japplis.websiteoptimizer.plist",
  ]
end
