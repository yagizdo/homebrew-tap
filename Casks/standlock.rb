cask "standlock" do
  version "0.13.0"
  sha256 "694dff3ecbdf598ae7baf50b474ca6aa5ca8d03750171149add3e748a69072b7"

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
