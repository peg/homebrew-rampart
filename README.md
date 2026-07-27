# Legacy Homebrew Tap for Rampart

This tap is retained temporarily for compatibility and currently provides
Rampart v1.4.0. New installations should use the canonical `peg/tap` tap, which
is updated automatically by Rampart's release workflow. Future releases are
only guaranteed there.

## Installation

```bash
brew install peg/tap/rampart
```

Existing `peg/rampart` installations can continue using this tap for now. To
migrate to the canonical tap, uninstall only the Homebrew package, untap the
legacy repository, and reinstall; Rampart configuration under `~/.rampart` is
not removed:

```bash
brew uninstall peg/rampart/rampart
brew untap peg/rampart
brew install peg/tap/rampart
```

## Usage

After installation, you can use the `rampart` command:

```bash
rampart version
rampart --help
```

For more information, visit [https://rampart.sh](https://rampart.sh).
