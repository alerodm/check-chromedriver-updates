# check-chromedriver-updates

Checks the latest released version of the Chrome webdriver, and if different to the current one, sends a notification
to Slack.

#### Required ENV variables

* `CURRENT_CHROMEDRIVER_VERSION`: The current version used for the comparison, for example "2.39"
* `SLACK_CHANNEL`: Channel where the notification will be sent
* `SLACK_WEBHOOK`: Webhook that will be used to post the message
