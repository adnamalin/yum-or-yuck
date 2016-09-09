get '/business/:term' do
  yelp = YelpApi.new
  @biz = yelp.select_business(params[:term])
  erb :'businesses/show'
end
