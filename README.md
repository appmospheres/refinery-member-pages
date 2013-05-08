# RefineryMemberPages

A simple generator plugin for having refinery members-only pages.

## Installation

Add this line to your application's Gemfile:

    gem 'refinery-member-pages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install refinery-member-pages

After that, run the generators:

    $ rails g refinery_member_pages:migration
    $ rails g refinery_member_pages:config

and don't forget to run the migration:

    $ rake db:migrate
