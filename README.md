# bhowerton/tap

Homebrew casks for [Splashdown](https://github.com/bhowerton/splashdown): hold a key, say it, and it's typed.

```sh
brew tap bhowerton/tap
brew trust --cask bhowerton/tap/splashdown
brew install --cask splashdown
```

Homebrew asks you to trust casks from taps outside its own repositories; the second line does that for this one cask.

Splashdown updates itself once installed, so `brew upgrade` only matters for new installs.
