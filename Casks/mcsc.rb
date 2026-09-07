cask "mcsc" do
  version "0.7.0"
  sha256 "4bda40aef00f8bb2f5f57c22781a0a4c6e150d8e3b27c1682a04ccb493c6fae1"

  url "https://github.com/ShubhamJ010/mission-control-shortcuts/releases/download/v#{version}/MCSC.dmg"
  name "MCSC"
  desc "Keyboard shortcuts and trackpad gestures for Mission Control"
  homepage "https://github.com/ShubhamJ010/mission-control-shortcuts"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

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
