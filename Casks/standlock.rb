cask "standlock" do
  version "0.1.0"
  sha256 "d4193094b7a1c7c86fb786b84ec84c0b4b0f6d6d6043fc98f46ae9067e7dfc75"

  url "https://github.com/yagizdo/StandLock/releases/download/v#{version}/StandLock-#{version}.zip",
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
