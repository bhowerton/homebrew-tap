cask "splashdown" do
  version "0.12.1"
  sha256 "b7a3681ef55dc53eeaa3fec8d3b74205b4919e392ed05b1eba475d0e5e96f529"

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
