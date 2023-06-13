cask "japplis-website-optimizer" do
  version "4.0"
  sha256 "fb2b437b926a386548fc49416e25121bac2c3a01814fbf5e62483b8d212a86b0"

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
