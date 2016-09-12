![logo](http://i.imgur.com/0WAFsJQ.png)

Search from Chicago Yelp listings to see a restaurants details, ratings, etc and their latest health inspection report! 

Find out any dirt about your next meal, literally.

---
###Visit Live Site
[https://yumoryuck.herokuapp.com/](https://yumoryuck.herokuapp.com/)

####Run locally: 
Clone down the repo and create a .env file in the root directory with the following API keys from [Yelp API](https://www.yelp.com/developers/documentation/v2/overview) and [Chicago City API](https://dev.socrata.com/foundry/data.cityofchicago.org/cwig-ma7x):

```
YELP_CONSUMER_KEY=<YOUR YELP_CONSUMER_KEY>
YELP_CONSUMER_SECRET=<YOUR YELP_CONSUMER_SECRET>
YELP_TOKEN=<YOUR YELP_TOKEN>
YELP_TOKEN_SECRET=<YOUR YELP_TOKEN_SECRET>
CHI_TOKEN=<YOUR CHI_TOKEN>
CHI_TOKEN_SECRET=<YOUR CHI_TOKEN_SECRET>

```

Place the .env in your .gitignore. Run `dotenv bundle exec shotgun` and visit http://localhost:9393!

###Tech 
[Yelp API](https://www.yelp.com/developers/documentation/v2/overview) cross references the [Chicago City API](https://dev.socrata.com/foundry/data.cityofchicago.org/cwig-ma7x) to display health inspection information along with Yelp rating and sample review. 

* Ruby
* Sinatra 
* Materialize 
* AJAX/JQuery
* [yelp-ruby gem](https://github.com/Yelp/yelp-ruby)
* Heroku

###Challenges
* Yelp API - Oauth require for any call. Initiallty started off trying to build the API call from scratch since I was only making two fairly simple get request. Pivoted after spiking into creating oauth signatures and for the sake of time used the yelp-ruby gem instead. 
* Chicago City API is very particular about your parameters when you query for matches. 
* Deciding what parameters to use in the cross referencing search to cut down on no matches. First parameter was address, and then name + zipcode if address failed. 
* Handling input errors with Yelp API (characters)

###Next Steps
* Refactor current code and clean up views
* Allow users to vote on listings if they are 'worth the risk'
* Pull more info from Yelp, for example display 3 recent reviews instead of 1 snippet
* Parse violation descriptions into more readable text
* Improve styling 
* Look into nationwide database for health inspections
* Chrome Extension that makes Chicago City API calls and scrapes the Yelp listing you are own so you don't need to go to seperate app
