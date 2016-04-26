# RefineryMemberPages

A simple generator plugin for having refinery members-only pages.

## Requirements

First of all you need a member model and an interface for managing these members. Also you have to build your own authentication system or use one like Devise.

`signed_in_method?` is a method used in guarding the access to a hidden page and must be defined in your application_controller.rb. An example would be:

    def signed_in_method?
      member_signed_in?
    end

`login_member_path` must be defined in your routes, depending on the member model. An example would be:

    get 'members/sign_in', to: 'sessions#new', as: :login_member

Additionaly, `previous_url` must be a hidden field in your login form for members. This is used to redirect logged in members to the page they tried to access previously.

Also, most probably, you'll have to customize the behaviour of login and logout actions (to redirect users where you want) in your application controller. Examples (if you use Devise) would be:

    def after_sign_in_path_for(resource)
      case resource
      when Member
        if params[:member].present? && params[:member][:previous_url].present?
          refinery.page_path(params[:member][:previous_url])
        else
          refinery.root_path
        end
      when Refinery::Authentication::Devise::User
        refinery.admin_root_path
      else
        refinery.root_path
      end
    end

    def after_sign_out_path_for(resource)
      refinery.root_path
    end

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
