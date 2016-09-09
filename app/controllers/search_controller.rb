get '/' do
  erb :'searches/new'
end

get '/searches' do
  yelp = YelpApi.new
  term = params[:search_term]
  @results = yelp.search_restaurants(term)
  if request.xhr?
    erb :'searches/show', layout: false, locals: {results: @results}
  else
    erb :'searches/show', locals: {results: @results}
  end
end
