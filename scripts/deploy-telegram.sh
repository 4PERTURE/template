#!/usr/bin/env sh
#cp app/build/outputs/apk/release/app-release.apk ThiccStatus-$TRAVIS_BUILD_NUMBER.apk
curl -F chat_id="-1001289629950" -F text="$(./scripts/changelog.sh)" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendMessage
curl -F chat_id="-1001289629950" -F document=@"ThiccStatus-$TRAVIS_BUILD_NUMBER.apk" -F parse_mode="HTML" https://api.telegram.org/bot$BOT_TOKEN/sendDocument

echo $(./scripts/changelog.sh)