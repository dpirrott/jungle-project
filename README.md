# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

The Jungle project was not only about learning a new language, ecosystem, and framework. It was about developing a feel for what it takes to inherit an existing codebase in a language/framework that I wasn’t comfortable with. Working on this project allowed me to apply previous learning tactics to research and become familiar with the once foreign concept of Ruby on Rails. Realistic features and bug fixes were described, rather than shown through step-by-step instructions to simulate real-world scenarios.

## Project Demo

| !["Register New User"](https://github.com/dpirrott/jungle-project/blob/master/docs/Registration.gif) |
| :--------------------------------------------------------------------------------------------------: |
|                                        **Register New User**                                         |

| !["Create and Submit Order"](https://github.com/dpirrott/jungle-project/blob/master/docs/CreateOrder.gif) |
| :-------------------------------------------------------------------------------------------------------: |
|                                     **Add to Cart and Submit Order**                                      |

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
