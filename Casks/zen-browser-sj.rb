cask "zen-browser-sj" do
  version "1.24.3b"
  sha256 :no_check

  url "https://github.com/ShubhamJ010/desktop/releases/download/#{version}/zen-rc-macos-aarch64.zip"
  name "Zen Browser (SJ Build)"
  desc "Custom release-channel build of Zen Browser for macOS arm64"
  homepage "https://github.com/ShubhamJ010/desktop"

  auto_updates false
  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "Zen.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Zen.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/zen",
    "~/Library/Caches/zen",
    "~/Library/Preferences/org.mozilla.zen.plist",
    "~/Library/Saved Application State/org.mozilla.zen.savedState",
  ]
end
