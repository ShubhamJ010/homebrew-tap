# ShubhamJ010 Homebrew Tap

Official Homebrew tap for [MCSC (Mission Control Shortcuts)](https://github.com/ShubhamJ010/mission-control-shortcuts) and other macOS utilities.

## Installation

### 1. Tap the repository
```bash
brew tap ShubhamJ010/tap
```

*(On Homebrew 6+, run `brew trust ShubhamJ010/tap` if prompted).*

### 2. Install MCSC
```bash
brew install --cask mcsc
```

*Note: The cask automatically removes macOS quarantine flags during installation. You only need to grant Accessibility permissions in **System Settings → Privacy & Security → Accessibility** on first launch.*

## Updating
```bash
brew update
brew upgrade --cask mcsc
```
