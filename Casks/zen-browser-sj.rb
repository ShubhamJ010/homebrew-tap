cask "zen-browser-sj" do
  version "1.24.2b"
  sha256 "220c63108075f40862606f9c4c572b8582754703d2d8f1a6d61a4093bdad6dfc"

  url "https://github.com/ShubhamJ010/desktop/releases/download/#{version}/zen-rc-macos-aarch64.zip"
  name "Zen Browser (SJ Build)"
  desc "Custom release-channel build of Zen Browser"
  homepage "https://github.com/ShubhamJ010/desktop"

  auto_updates false
  depends_on arch: :arm64

  app "Zen.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-r", "-d", "com.apple.quarantine", "{{appdir}}/Zen.app"]
  end

  zap trash: [
    "~/Library/Application Support/zen",
    "~/Library/Caches/zen",
    "~/Library/Preferences/org.mozilla.zen.plist",
    "~/Library/Saved Application State/org.mozilla.zen.savedState",
  ]
end
