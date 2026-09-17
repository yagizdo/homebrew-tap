cask "standlock" do
  version "0.6.0"
  sha256 "b028f813642bb8adec92fab6b332013c30aea6c59df1a91e91aa0409f8082ae1"

  url "https://github.com/yagizdo/StandLock/releases/download/v#{version}/StandLock-#{version}.dmg",
      verified: "github.com/yagizdo/StandLock/"
  name "StandLock"
  desc "Stand reminder and break screen for macOS"
  homepage "https://standlock.app"

  depends_on macos: ">= :ventura"

  app "StandLock.app"

  zap trash: [
    "~/Library/Application Support/StandLock",
    "~/Library/Preferences/com.yagizdokumaci.standlock.plist",
    "~/Library/Caches/com.yagizdokumaci.standlock",
  ]
end
