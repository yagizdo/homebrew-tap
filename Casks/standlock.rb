cask "standlock" do
  version "0.1.3"
  sha256 "d455c0faa260876550e29c276fa857b4d62b29bcbe3f9a4517796fc207f527d6"

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
