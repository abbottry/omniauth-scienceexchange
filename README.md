# OmniAuth Science Exchange

This is the unofficial OmniAuth strategy for authenticating to Science Exchange. To
use it, you'll need to sign up for an OAuth Application ID and Secret
on the [Science Exchange Applications Page](https://developers.scienceexchange.com/applications/new/).

## Basic Usage

    use OmniAuth::Builder do
      provider :scienceexchange, ENV['SCIENCE_EXCHANGE_KEY'], ENV['SCIENCE_EXCHANGE_SECRET']
    end
