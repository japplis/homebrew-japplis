cask "japplis-website-optimizer" do
  version "4.2"
  sha256 "03695afe16917374c09d319ca02d118906fc31ec78a52693718c05e967bb773d"

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
