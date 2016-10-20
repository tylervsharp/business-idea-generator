get '/users/new' do
  erb :'users/new'
end

post '/users' do
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
