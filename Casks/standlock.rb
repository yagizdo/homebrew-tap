cask "standlock" do
  version "0.1.4"
  sha256 "15091f3a487c7df047e85966ed8b0de82840d0ec125af681774515e0a598720f"

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
