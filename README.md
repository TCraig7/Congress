# Congress

## About
Congress is a back-end project built on Ruby on Rails v. 5.2.1 and Ruby 2.4.1. It pulls in data from the [ProPublica](https://projects.propublica.org/api-docs/congress-api/members/) Congress API and allows you to search for congresspeople based on state and chamber. This application also creates an endpoint to find news articles by a representatives's name, which pulls from the [News API](https://newsapi.org/). Congress is fully tested using RSpec.

Link to application: [Congress](https://thecongresstracker.herokuapp.com/)

## How to use
This application does not have a landing page, and so the first page you will see will show a 404 error. This is expected. As there is no front end to this project, all navigation must be done via the address bar.

### Endpoints
***To find all members for a state:***

Type in the URL

```
https://thecongresstracker.herokuapp.com/api/v1/members
```

and then the parameters you want. For example:

```
https://thecongresstracker.herokuapp.com/api/V1/members?chamber=house&state=CO
```

will return information for all members of the United States House of Representatives for the State of Colorado.

You may substitute 'senate' for house in the above URL, and any state abbreviation for 'CO'.

***To find an individual member:***

Type in the URL

```
https://thecongresstracker.herokuapp.com/api/v1/members/ID_NUMBER
```

and give it the ID of the congressperson you want. For example:

```
https://thecongresstracker.herokuapp.com/api/v1/members/D000197
```

will return information for Congresswoman Diana DeGette. The ID of the congressperson may be found in the information returned by making the API call to find all members for a state.

***Articles***

Type in the URL

```
https://thecongresstracker.herokuapp.com/api/v1/articles?
```

followed by the parameters for the name you wish to search for. For example:

```
https://thecongresstracker.herokuapp.com/api/v1/articles?first_name=diana&last_name=degette'
```

will return the 20 most recent news articles about Colorado Congresswoman Diana DeGette.

## How to run locally
Clone down the repository to your local machine.

Bundle and Bundle update to verify all gems are fully updated.

You can run tests at any time after bundling by typing ``rspec`` in the terminal.

To start a local server, type ``rails s`` in the terminal.

## Gems Used
### Production

* pg, '>= 0.18', '< 2.0'
* puma, '~> 3.11'
* sass-rails, '~> 5.0'
* uglifier, '>= 1.3.0'
* coffee-rails, '~> 4.2'
* turbolinks, '~> 5'
* jbuilder, '~> 2.5'
* faraday
* figaro
* fast_jsonapi
* rack-cors, require: 'rack/cors'
* rspec-rails

### Development/Test

* byebug, platforms: [:mri, :mingw, :x64_mingw]
* capybara
* capybara-email
* factory_bot_rails
* faker
* launchy
* newrelic_rpm
* pry
* rspec-rails
* shoulda-matchers
* database_cleaner
* simplecov
* vcr
* webmock
