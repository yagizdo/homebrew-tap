cask "standlock" do
  version "0.1.2"
  sha256 "4eb069436beb66b5c95196e5d8295d02e3015f8adf8159fc2fd6bf8c03ef91c0"

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
