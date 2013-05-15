**This repo is no longer maintained**, please see https://github.com/starterleague/omniauth-starterleague

# OmniAuth::StarterLeague

OmniAuth OAuth 2.0 Strategy for The Starter League Student Portal

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-starterleague'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-starterleague

## Usage
### Access Tokens
Your application will need to be registered with the Starter League Portal before you can send OAuth requests. Please contact <darby@starterleague.com> to get your access tokens.

### Rack apps
OmniAuth::Strategies::StarterLeague can be used as a rack middleware with OmniAuth. See the OmniAuth [docs](https://github.com/intridea/omniauth).

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :starterleague, APP_ID, APP_SECRET
    end


### Rails apps with Devise
If your Rails app is using Devise, you can use the omniauthable plugin to configure your app easily. See the Devise [docs](https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview).

    # config/initializers/devise.rb
    config.omniauth :starterleague, APP_ID, APP_SECRET

## Auth Hash
Response example from `request.env['omniauth.auth']`:

    {
      "provider"=>"starterleague",
      "uid"=>"<PORTAL_USER_ID>",
      "info"=> {
        "email" => "<USER_EMAIL>",
        "first_name" => "<USER_FIRST_NAME>",
        "last_name" => "<USER_LAST_NAME>",
        "twitter" => "<TWITTER_USERNAME>",
        "github" => "<GITHUB_USERNAME>",
        "blog" => "<BLOG_URL>",
        "avatar" => "<AVATAR_URL>",
        "courses" => [
          {
            "id": <COURSE_ID>,
            "name": "<COURSE_NAME>",
            "quarter": "<COURSE_QUARTER>",
            "day": "<COURSE_DAYS>",
            "time": "<COURSE_TIMES>",
            "location": "<COURSE_LOCATION>",
            "starts_on": "<COURSE_START_DATE>",
            "ends_on": "<COURSE_END_DATE>",
            "role": "<USER_ROLE>"
          }
        ]
      },
      "credentials"=> {
        "token"=>"<ACCESS_TOKEN>",
        "expires"=>"<EXPIRATION_DATE>"
      }
    }

## Support
Please contact <darby@starterleague.com> if you need any help getting things working.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
