# Homebrew Antimoji Tap

This is a Homebrew tap for [Antimoji](https://github.com/jamesainslie/antimoji), a high-performance emoji detection and removal CLI tool.

## Installation

```bash
# Add the tap
brew tap jamesainslie/antimoji

# Install antimoji
brew install antimoji
```

## Usage

```bash
# Scan for emojis
antimoji scan .

# Remove emojis safely with backup
antimoji clean --backup --in-place .

# Generate allowlist configuration
antimoji generate --type=ci-lint --output=.antimoji.yaml .

# High-performance scanning
antimoji scan --workers 8 --stats .
```

## About Antimoji

Antimoji is a high-performance CLI tool for detecting and removing emojis from source code and text files. It features:

- **Unicode Emoji Detection**: Comprehensive detection of Unicode emojis and text emoticons
- **High Performance**: Concurrent processing with intelligent worker pool management
- **Cross-Platform**: Works on macOS, Linux, and Windows
- **Configurable**: Flexible allowlists and ignore patterns
- **CI/CD Integration**: Perfect for automated workflows and pre-commit hooks

## Supported Platforms

- macOS (Intel and Apple Silicon)
- Linux (x86_64 and ARM64)

## Version

Current version: **v0.9.3**

## License

MIT License. See the [main repository](https://github.com/jamesainslie/antimoji) for details.
