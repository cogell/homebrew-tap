cask "sshot" do
  version "1.1.0"
  sha256 "d47a758580d96bff484b9d4bca54cfec21dc71e1aad997856f5db6f8ea3a094a"

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
