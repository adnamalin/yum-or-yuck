require 'httparty'
require 'dotenv'
Dotenv.load

class ChiApi

  def initialize
    @base_uri="https://data.cityofchicago.org/resource/cwig-ma7x.json?"
  end

  def find_business(address, name, zipcode)
    biz_address = format_address(address)
    response = HTTParty.get("#{@base_uri}address=#{biz_address}&city=CHICAGO&$$app_token=#{ENV['CHI_TOKEN']}&$order=inspection_date DESC").parsed_response[0] ||=  HTTParty.get("#{@base_uri}aka_name=#{name.upcase}&zip=#{zipcode}&$$app_token=#{ENV['CHI_TOKEN']}&$order=inspection_date DESC").parsed_response[0]
  end

  def format_address(original_address)
    original_address.upcase! + " "
  end

end
