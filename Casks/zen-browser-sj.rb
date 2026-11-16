cask "zen-browser-sj" do
  version "1.24.2b"
  sha256 "8a424662e83d3f85f5096f509a19c21c364796140ce9c1774502571e9a541e3c"

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
