cask "splashdown" do
  version "0.1.0"
  sha256 "3412177f73eb5165089a2468e869a7cbca2582dba96078926496b4e18bdeabc9"

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
