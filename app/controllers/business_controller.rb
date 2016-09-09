get '/business/:term' do
  yelp = YelpApi.new
  chi_api = ChiApi.new
  @biz = yelp.select_business(params[:term])
  @inspection_report = chi_api.find_business(@biz.location.address[0], @biz.name, @biz.location.postal_code)
  erb :'businesses/show'
end
