cask "sshot" do
  version "1.0.0"
  sha256 "18a06ecc2a04411ac8d1c4dc9ad583cd23be5231eca398142ed9326216060819"

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
