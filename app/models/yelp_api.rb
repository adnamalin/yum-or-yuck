require 'httparty'
require 'SecureRandom'

class YelpApi

  def initialize
    @base_url = "https://api.yelp.com/v2/search?"
  end

  def search_restaurants(term)

  end

end

yelp = YelpApi.new
