require 'yelp'
require 'dotenv'
Dotenv.load

class YelpApi

  def initialize
    @client = Yelp::Client.new({ consumer_key: ENV['YELP_CONSUMER_KEY'],
                            consumer_secret: ENV['YELP_CONSUMER_SECRET'],
                            token: ENV['YELP_TOKEN'],
                            token_secret: ENV['YELP_TOKEN_SECRET']
                          })
  end

  def search_restaurants(term)
    results = @client.search('Chicago', {term: term})
  end

end
