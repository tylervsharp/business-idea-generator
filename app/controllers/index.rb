get '/' do
  @parsed = NewsParser
  p @parsed
  erb :'index'
end
