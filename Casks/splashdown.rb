cask "splashdown" do
  version "0.7.0"
  sha256 "16833810f633064ae0a21eb66c3abe8ae779e61d749f603a4e1535f2c39aebcd"

  url "https://github.com/bhowerton/splashdown/releases/download/v#{version}/Splashdown-mac.dmg"
  name "Splashdown"
  desc "Push-to-talk dictation into any app, with optional AI cleanup"
  homepage "https://github.com/bhowerton/splashdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Splashdown.app"

  zap trash: [
    "~/Library/Application Support/Splashdown",
    "~/Library/Caches/app.splashdown",
    "~/Library/Caches/Splashdown",
    "~/Library/Logs/Splashdown",
    "~/Library/WebKit/app.splashdown",
  ]
end
