cask "japplis-website-optimizer" do
  version "4.3"
  sha256 "67bddf4f4fa00942525d0e1c70d4e49a0c6a38908992f5ddd1a3f6c8cdb1fc28"

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
