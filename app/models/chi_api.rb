require 'httparty'
require 'dotenv'
Dotenv.load

class ChiApi

  def initialize
    @base_uri="https://data.cityofchicago.org/resource/cwig-ma7x.json?"
  end

  def find_business(address)
    biz_address = format_address(address)
    #find resturants match address, sort by latest inspection and return that report
    response = HTTParty.get("#{@base_uri}address=#{biz_address}&city=CHICAGO&$$app_token=#{ENV['CHI_TOKEN']}&$order=inspection_date DESC")
    response.parsed_response[0]
  end

  def format_address(original_address)
    original_address.upcase! + " "
  end

end
