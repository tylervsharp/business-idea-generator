get '/' do
  @prompts = create_prompts
  erb :'index'
end

get '/refresh' do
  if !logged_in?
    redirect '/'
  else
    unparsed = GoogleTrendsParser.parse
    unparsed.each { |trend| Trend.create(title: trend[:title], date: trend[:date]) }
    redirect '/'
  end
end
