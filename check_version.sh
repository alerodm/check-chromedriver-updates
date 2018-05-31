#!/bin/bash

set -e

CHECK_URL="https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
LATEST_VERSION=$(curl -s $CHECK_URL)

# Slack notification config
MESSAGE="New Chromedriver version released: $LATEST_VERSION!"
PAYLOAD="{\"channel\": \"$SLACK_CHANNEL\", \"text\": \"$MESSAGE\"}"

if [ "$LATEST_VERSION" != "$CURRENT_CHROMEDRIVER_VERSION" ]; then
    echo "There's a new chromedriver version: $LATEST_VERSION"
    echo "Sending Slack Notification to channel #$SLACK_CHANNEL"
    curl -s -d "payload=$PAYLOAD" $SLACK_WEBHOOK
fi
