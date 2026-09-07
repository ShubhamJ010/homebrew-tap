cask "mcsc" do
  version "0.7.1"
  sha256 "112a8302ec30adf33a27b6adf244dc48f4369795d9933cfcd48c0320872e4c58"

  url "https://github.com/ShubhamJ010/mission-control-shortcuts/releases/download/v#{version}/MCSC.dmg"
  name "MCSC"
  desc "Keyboard shortcuts and trackpad gestures for Mission Control"
  homepage "https://github.com/ShubhamJ010/mission-control-shortcuts"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "MCSC.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/MCSC.app"],
                   sudo: false
  end

  uninstall quit: "sj010.MCSC"

  zap trash: [
    "~/Library/Preferences/sj010.MCSC.plist",
  ]

  caveats <<~EOS
    MCSC requires Accessibility permissions to intercept Mission Control input.
    Enable permission in:
      System Settings → Privacy & Security → Accessibility
  EOS
end
