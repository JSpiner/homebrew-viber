# Homebrew Viber

Homebrew tap for [Viber](https://github.com/jspiner/viber), a Claude conversation data analyzer for macOS.

## Installation

```bash
brew tap jspiner/viber
brew install --cask viber
```

## Quick Install (One-liner)

```bash
brew install --cask jspiner/viber/viber
```

## Upgrade

```bash
brew upgrade --cask viber
```

## Uninstallation

```bash
brew uninstall --cask viber
brew untap jspiner/viber
```

## Requirements

- macOS Monterey (12.0) or later
- Apple Silicon (M1/M2/M3) Mac

## What is Viber?

Viber is an Electron-based desktop application that analyzes Claude conversation data stored in JSONL format. It features:

- **Real-time monitoring** of active Claude sessions
- **Statistics** for token usage and conversation metrics
- **Session log** browser with search capabilities
- **Dark-themed UI** optimized for macOS

## Troubleshooting

### "Viber can't be opened because Apple cannot check it for malicious software"

This app is signed with a valid Developer ID but may show this message on first launch. To open:

1. Right-click on the Viber app in Applications folder
2. Select "Open" from the context menu
3. Click "Open" in the dialog that appears

### Verification

To verify the code signature:
```bash
codesign --verify --deep --strict --verbose=2 /Applications/Viber.app
```

## Development

To contribute to this Homebrew tap:

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Testing Formula Locally

```bash
brew install --cask --verbose --debug Casks/viber.rb
```

### Audit Formula

```bash
brew audit --cask viber
```

## Support

- **Issues**: [GitHub Issues](https://github.com/jspiner/viber/issues)
- **Discussions**: [GitHub Discussions](https://github.com/jspiner/viber/discussions)

## License

MIT License - see [LICENSE](LICENSE) file for details

## Author

- Sungmin Jung ([@jspiner](https://github.com/jspiner))

---

*This tap is maintained independently and is not affiliated with Anthropic or Claude.*
