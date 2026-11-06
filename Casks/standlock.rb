cask "standlock" do
  version "0.11.0"
  sha256 "17f7e904d55d2e12430b3a78386ac4ff0130dbc92f7087701814bb07dd52d461"

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
