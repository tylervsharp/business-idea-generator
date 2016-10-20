get '/' do
  erb :'index'
end

get '/login' do
  erb :'sessions/new'
end

post '/login' do
  user = User.find_by(email: params[:user][:email])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    create_trends
    redirect '/'
  else
    @errors = ["Invalid email or password"]
    erb :'users/login'
  end
end

get '/logout' do
  if logged_in?
    session.clear
  end
    redirect '/'
end
