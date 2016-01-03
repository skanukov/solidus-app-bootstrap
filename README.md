# Solidus app bootstrap

This is a basic Solidus app to use as a starting point for your new e-commerce applications.

It uses [Solidus](https://github.com/solidusio/solidus) - the best gem out there for e-commerce development.

## How to use

Clone the repo or download and extract the archive with source code. Don't forget to change your [git remotes](https://help.github.com/articles/changing-a-remote-s-url/) if you cloned the repo. 

Do the following:

* Modify `db/database.yml` file according to your current database settings. 
* Modify `config/initializers/devise.rb` file and set new secret key for your app. You can generate a random secret key using `bundle exec rake secret` command.
* Run the `bundle` command to install required gems. 
* Run `bundle exec rake db:migrate` command to create required database tables.
* Run `bundle exec rake db:seed` to fill database with Russia and it's regions and translate existing data to russian language. It will also prompt to create an admin user.

Now you are done. Have fun!