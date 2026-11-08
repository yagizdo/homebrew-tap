cask "standlock" do
  version "0.12.0"
  sha256 "1335a7eb05f8dc54cced2da44ad110da84dfbef81e345f17b993b3d9c461a721"

  url "https://github.com/yagizdo/StandLock/releases/download/v#{version}/StandLock-#{version}.dmg"
  name "StandLock"
  desc "Stand reminder and break screen for macOS"
  homepage "https://standlock.app"

  depends_on macos: :ventura

  app "StandLock.app"

  zap trash: [
    "~/Library/Application Support/StandLock",
    "~/Library/Preferences/com.yagizdokumaci.standlock.plist",
    "~/Library/Caches/com.yagizdokumaci.standlock",
  ]
end
