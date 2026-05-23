cask "standlock" do
  version "0.2.0"
  sha256 "166e8d1b1bd87536361c9cbc869718da04092c53a71cd8a03d2e234fd2fc7230"

  url "https://github.com/yagizdo/StandLock/releases/download/v#{version}/StandLock-#{version}.dmg",
      verified: "github.com/yagizdo/StandLock/"
  name "StandLock"
  desc "Stand reminder and break screen for macOS"
  homepage "https://github.com/yagizdo/StandLock"

  depends_on macos: ">= :sequoia"

  app "StandLock.app"

  zap trash: [
    "~/Library/Application Support/StandLock",
    "~/Library/Preferences/com.yagizdokumaci.standlock.plist",
    "~/Library/Caches/com.yagizdokumaci.standlock",
  ]
end
