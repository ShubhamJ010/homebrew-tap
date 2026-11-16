cask "zen-browser-rc" do
  version "1.24.3b"
  sha256 :no_check

  url "https://github.com/ShubhamJ010/desktop/releases/download/#{version}/zen-rc-macos-aarch64.zip"
  name "Zen Browser (RC)"
  desc "Gecko-based web browser with vertical tabs and workspaces (ShubhamJ010 fork)"
  homepage "https://github.com/ShubhamJ010/desktop"

  livecheck do
    url "https://github.com/ShubhamJ010/desktop/releases"
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Zen.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Zen.app"]
  end

  uninstall quit: "org.mozilla.zen"

  zap trash: [
    "~/Library/Application Support/zen",
    "~/Library/Caches/zen",
    "~/Library/Preferences/org.mozilla.zen.plist",
    "~/Library/Saved Application State/org.mozilla.zen.savedState",
  ]
end
