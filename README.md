# ShubhamJ010 Homebrew Tap

Official Homebrew tap for macOS utilities and custom builds.

## Installation

### 1. Tap the repository
```bash
brew tap ShubhamJ010/tap
```

*(On Homebrew 6+, run `brew trust ShubhamJ010/tap` if prompted).*

### 2. Install Zen Browser (RC)
```bash
brew install --cask zen-browser-rc
```

*Note: The cask automatically removes macOS quarantine flags during installation.*

### 3. Install MCSC
```bash
brew install --cask mcsc
```

*Note: The cask automatically removes macOS quarantine flags during installation. You only need to grant Accessibility permissions in **System Settings → Privacy & Security → Accessibility** on first launch.*

## Updating

```bash
brew update
brew upgrade --cask zen-browser-rc
```
