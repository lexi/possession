# Possession

Playground to learn Ruby and Rails better. Right now the app doesn’t do much at all. The idea is to create a simple app to [POSSE](https://indiewebcamp.com/POSSE), Publish (on your) Own Site, Syndicate Elsewhere.

## Requirements

* Ruby (version as specified in `.ruby-version`)
* PostgreSQL (`brew install postgresql`)

## Installation

    gem install bundler
    rbenv rehash
    bundle

Add a file called `.env` in the root directory of the application.

```yaml
# Super secret key that is used to encrypt database records
# check what is set in production if you need to be able to decrypt production data
ENCRYPTION_KEY=somesecret
DEVELOPMENT_DATABASE=possession_development
TEST_DATABASE=possession_test
DATABASE_USERNAME=username # your local postgres db user
DATABASE_PASSWORD=password # your local postgres db password
RACK_ENV=development
PORT=3000
BASIC_AUTH_USERNAME=yourusername
BASIC_AUTH_PASSWORD=yourpassword
```

Create the databases by running:

    rake db:create:all

Now you’re good to go, run the server:

    bundle exec rails s

## Ready for Heroku

The app is ready to deploy to Heroku. [Read about how to get started](https://devcenter.heroku.com/articles/getting-started-with-rails4)

## Goals

* Follow POSSE syndication model and other indie web principles ([IndieWebify.me](http://indiewebify.me/)).
* A blog where posts are syndicated to Medium.
* A links, quotes and books section.
* Posts and links are taggable.
* Tweets are published and syndicated to Twitter.
* Reverse syndicate starred/read later items on Medium, Twitter, YouTube, Vimeo, Pinboard, Feedbin and Instapaper.

## Todo

* Basic authentication.
* [Medium like editor](https://github.com/yabwe/medium-editor)
* RSS feed.
* Google Analytics.
* OpenGraph meta tags.
* Use HTTPS.
