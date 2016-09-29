get '/' do
  @parsed = GoogleTrendsParser.parse
  erb :'index'
end
