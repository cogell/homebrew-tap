cask "sshot" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

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
