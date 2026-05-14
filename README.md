# alecs5am/homebrew-tap

Homebrew tap for [`ralphy`](https://github.com/alecs5am/ralphy) — open-source UGC video factory CLI.

## Install

```bash
brew install alecs5am/tap/ralphy
```

Or, if you'd like to pin the tap first:

```bash
brew tap alecs5am/tap
brew install ralphy
```

After install:

```bash
ralphy --version
ralphy help
ralphy setup       # interactive: API keys + profiles
```

## Update

```bash
brew update && brew upgrade ralphy
```

## Uninstall

```bash
brew uninstall ralphy
brew untap alecs5am/tap
```

## Available formulae

| Formula | Description |
|---|---|
| [`ralphy`](Formula/ralphy.rb) | UGC video factory CLI (latest [release](https://github.com/alecs5am/ralphy/releases/latest)) |

Released binaries are sha256-pinned; the tap is bumped alongside the upstream `ralphy` release.
