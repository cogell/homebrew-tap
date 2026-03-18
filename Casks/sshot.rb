cask "sshot" do
  version "1.0.0"
  sha256 "7efcb95ef6d707837471dcd5526a478d54377bf978e1cf1da01d19d3499dcd1a"

  url "https://github.com/cogell/sshot/releases/download/v#{version}/SSHot-#{version}.zip"
  name "SSHot"
  desc "Clipboard-to-SSH screenshot uploader for macOS"
  homepage "https://github.com/cogell/sshot"

  depends_on macos: ">= :sonoma"

  app "SSHot.app"

  zap trash: [
    "~/Library/Preferences/com.cogell.sshot.plist",
  ]
end
