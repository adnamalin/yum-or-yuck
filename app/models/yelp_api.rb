require 'httparty'
require 'SecureRandom'

class YelpApi

  def initialize
    @base_url = "https://api.yelp.com/v2/search?"
  end

  def search_restaurants(term)
    nonce = SecureRandom.base64.delete("+/=")
    timestamp = Time.now.to_i
    url = "#{@base_url}&location=Chicago&oauth_consumer_key=D4yigoJjl2wvf1_VGkiukg&oauth_nonce=#{nonce}&oauth_signature_method=HMAC-SHA1&oauth_timestamp=#{timestamp}&oauth_token=UD4MRjVRa_4fls-RZ7AqayfEyAspAeeb&term=#{term}"
    sig = signature("D4yigoJjl2wvf1_VGkiukg", "UD4MRjVRa_4fls", url)
    p sig
    # response = HTTParty.get( "#{@base_url}term=#{term}&location=Chicago&oauth_consumer_key=D4yigoJjl2wvf1_VGkiukg&oauth_token=UD4MRjVRa_4fls-RZ7AqayfEyAspAeeb&oauth_signature_method=HMAC-SHA1&oauth_signature=#{signature}&oauth_nonce=#{nonce}&oauth_timestamp=#{timestamp}")
    # p response
  end

end

yelp = YelpApi.new
yelp.search_restaurants("korean")
