cask "splashdown" do
  version "0.13.1"
  sha256 "f7ae59721e14032d27cd2522ce29e5c77f599da6058acd525d1a149773c04ec4"

  url "https://github.com/bhowerton/splashdown/releases/download/v#{version}/Splashdown-mac.dmg"
  name "Splashdown"
  desc "Push-to-talk dictation into any app, with optional AI cleanup"
  homepage "https://github.com/bhowerton/splashdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Splashdown.app"

  zap trash: [
    "~/Library/Application Support/Splashdown",
    "~/Library/Caches/app.splashdown",
    "~/Library/Caches/Splashdown",
    "~/Library/Logs/Splashdown",
    "~/Library/WebKit/app.splashdown",
  ]
end
