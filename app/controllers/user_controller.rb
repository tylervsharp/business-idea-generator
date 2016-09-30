get '/users/new' do
  if !logged_in?
    redirect '/'
  else
    erb :'users/new'
  end
end

post '/users' do
  if !logged_in?
    redirect '/'
  else
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      create_trends
      redirect '/'
    else
      @errors = user.errors.full_messages
      erb :'users/new'
    end
  end
end

get '/login' do
  erb :'users/login'
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

get '/users/:id' do
  if !logged_in?
    redirect '/'
  else
    @user = User.find(params[:id])
    erb :'users/show'
  end
end

get '/users/:id/edit' do
  if !logged_in?
    redirect '/'
  else
    @user = User.find(params[:id])
    erb :'users/edit'
  end
end

put '/users/:id' do
  if !logged_in?
    redirect '/'
  else
    @user = User.find(params[:id])
    @user.assign_attributes(params[:user])
    if @user.save
      redirect '/'
    else
      erb :'/users/edit'
    end
  end
end
