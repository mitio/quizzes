## Quizzes

A simple Rails 3 app for the "Programming in Ruby" course in the Sofia University

### Installation

Note: This Rails project is not compatible with Ruby 1.8. You will need at least 1.9.

To get this simple web app up and running, execute the following commands:

    git clone git://github.com/mitio/quizzes.git
    cd quizzes
    gem install bundler
    bundle install
    bundle exec rake db:migrate
    bundle exec rails s

Now you should be able to navigate to [http://localhost:3000/](http://localhost:3000/) and get on with it.

The admin panel (supported by [Active Admin](http://activeadmin.info)) is located at [http://localhost:3000/admin](http://localhost:3000/admin). The credentials to use are as follows:

* Username: **admin@example.com**
* Password: **password**
