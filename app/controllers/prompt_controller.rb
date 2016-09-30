get '/prompt' do
  if !logged_in?
    redirect '/'
  else
    @prompt = trend_in_question
    erb :'/prompts/show'
  end
end
