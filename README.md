![logo](http://i.imgur.com/0WAFsJQ.png)

Search from Chicago Yelp listings to see not only a restaurants details, ratings, etc but also their latest health inspection report! Find out any dirt about your next meal, literally.

---
##Visit Live Site
[https://yumoryuck.herokuapp.com/](https://yumoryuck.herokuapp.com/)

##Tech 
[Yelp API](https://www.yelp.com/developers/documentation/v2/overview) cross references the [Chicago City API](https://dev.socrata.com/foundry/data.cityofchicago.org/cwig-ma7x) to display health inspection information along with Yelp rating and sample review. 

* Ruby
* Sinatra 
* Materialize 
* AJAX/JQuery
* [yelp-ruby gem](https://github.com/Yelp/yelp-ruby)
* Heroku

##Challenges
* Yelp API - Oauth require for any call. Creating an OAuth nonce and timestamp was okay, Oauth Signature..not so much.
* Chicago City API is very particular about your parameters
* Deciding what parameters to use in the cross referencing search to cut down on a erroneous no match. Main parameter was address, and then name + zipcode if address failed. 
* Handling input errors with Yelp API (characters)

##Next Steps
* Refactor current code and clean up views
* Allow users to vote on listings if they are 'worth the risk'
* Pull more info from Yelp, for example display 3 recent reviews instead of 1 snippet
* Parse violation descriptions into more readable text
* Improve styling 
* Look into nationwide database for health inspections? 
* Chrome Extension that makes Chicago City API calls and scrapes the Yelp listing you are own so you don't need to go to seperate app
