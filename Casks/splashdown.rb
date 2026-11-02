cask "splashdown" do
  version "0.3.0"
  sha256 "f5bfe30f42294287077bb695cd66ebb910704b8adb848de6d8dddaf04468110d"

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
