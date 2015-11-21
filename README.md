# Possession

Playground to learn Ruby and Rails better. Right now the app doesn’t do much at all. The idea is to create a simple app to [POSSE](https://indiewebcamp.com/POSSE), Publish (on your) Own Site, Syndicate Elsewhere.

## Requirements

* Ruby (version specified in `.ruby-version`)
* SQLite

## Installation

    gem install bundler
    rbenv rehash
    bundle

Run the server:

    bundle exec rails s

## Goals

* Follow POSSE syndication model and other indie web principles.
* A blog where posts are syndicated to Medium.
* A links section.
* Tweets are published and syndicated to Twitter.
* Reverse syndicate starred/read later items on Twitter, YouTube, Vimeo, Feedbin and Instapaper.

## Todo

* Switch to Postgres.
* Basic authentication.
* Nicer urls.
