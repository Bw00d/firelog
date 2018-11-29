Firelog
================

This is an application that I built to track my expenses. I built it to replace time consuming spreadsheets that I have been using for year. One intention of the project was to experiment ReactJS as the front end, but I have yet to do that.

I am the only one using the app at the moment but it is available to anyone who wishes to use it. It is currently set up for me and the payment icons are ones that I use. I plan to update it so that a user can choose from a number of common icons.

If you would like to contribute to the application feel free to fork it and make pull requests.


-------------

This application requires:

- Ruby 2.3.7
- Rails 5.0.0.1


Getting Started
---------------
Clone the repository the run rake db:seed after you create the database. Send a pull request if you've made an improvement.

Documentation and Support
-------------------------

So far I have created the base application and added a style sheet. The application uses Devise for authentication and Fondation for the front end. It uses Puma web server for both develpment and production. RSpec and Capybara for testing. 

Todo
-------------
- Auto populate common categories
- Make link to category index so users can edit or delete categories
- Improve styling of category page
- Fix some style bugs associated with creating a category
- Implement year to date charts
- Improve database queries using ajax
- Allow users to choose payment icons
- Add react frontend
- Add a little branding: logo, etc.

Issues
-------------
- CSS issues when adding new category

Credits
-------

The base application was build using RailsComposer

License
-------
Released under the [MIT License](https://opensource.org/licenses/MIT).