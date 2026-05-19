cask "standlock" do
  version "0.1.1"
  sha256 "6e3ac8bf29fff3f3bdcc312b9bf816e61f757fa28578f611e4db1c727671217d"

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
