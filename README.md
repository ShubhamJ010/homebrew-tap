# ShubhamJ010 Homebrew Tap

Official Homebrew tap for [MCSC (Mission Control Shortcuts)](https://github.com/ShubhamJ010/mission-control-shortcuts) and other macOS utilities.

## Installation

### 1. Add and trust tap (Homebrew 6+)
```bash
brew tap --trust ShubhamJ010/tap
```

*(On Homebrew 5 or older, `brew tap ShubhamJ010/tap` works directly).*

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
