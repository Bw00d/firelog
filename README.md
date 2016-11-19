Firelog
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This is an application for managing wildland fire equipment and assets such as engines, crew carriers, dozers, etc.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.3
- Rails 5.0.0.1


Getting Started
---------------
Clone the repository the run rake db:seed after you create the database. Send a pull request if you've made an improvement.

Documentation and Support
-------------------------

So far I have created the base application and added a style sheet. The application uses Devise for authentication and Fondation for the front end. It uses Puma web server for both develpment and production. RSpec and Capybara for testing. 

Todo
-------------
Next step: Decide how you want to build the models for assets. The way it was done in Firecall feels like it smells. Do a little more research on "composition".

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
