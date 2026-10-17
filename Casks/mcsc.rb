cask "mcsc" do
  version "0.8.2"
  sha256 "17de6eb4a73375efa2d2ecd62e4e1541d2ecea69e81a8842433ef69e7ffd0a8a"

  url "https://github.com/ShubhamJ010/mission-control-shortcuts/releases/download/v#{version}/MCSC.dmg"
  name "MCSC"
  desc "Keyboard shortcuts and trackpad gestures for Mission Control"
  homepage "https://github.com/ShubhamJ010/mission-control-shortcuts"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :golden_gate

  app "MCSC.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-r", "-d", "com.apple.quarantine", "{{appdir}}/MCSC.app"]
  end

  uninstall quit: "sj010.MCSC"

  zap trash: "~/Library/Preferences/sj010.MCSC.plist"

  caveats <<~EOS
    MCSC requires Accessibility permissions to intercept Mission Control input.
    Enable permission in:
      System Settings → Privacy & Security → Accessibility
  EOS
end
