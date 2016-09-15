require 'yelp'
require "i18n"
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
    results.businesses
  end

  def select_business(biz_id)
    biz_id_cleaned = I18n.transliterate(biz_id)
    @client.business(biz_id_cleaned).business
  end

end
