get '/' do
  erb :'searches/new'
end

post '/searches' do
  yelp = YelpApi.new
  term = params[:search_term]
  @results = yelp.search_restaurants(term)
  erb :'searches/show'
end
