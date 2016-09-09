get '/business/:term' do
  yelp = YelpApi.new
  chi_api = ChiApi.new
  p params[:term]
  @biz = yelp.select_business(params[:term])
  p @biz
  @inspection_report = chi_api.find_business(@biz.location.address[0], @biz.name, @biz.location.postal_code)
  p @inspection_report
  erb :'businesses/show'
end
