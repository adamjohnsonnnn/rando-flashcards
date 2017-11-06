get '/users/new' do
  erb :'users/new'
end

post '/users' do
  p params
  @user = User.new(params[:user])
  p 'hello'
  if @user.save
    set_current_userid(@user.id)
    redirect '/decks'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  @rounds = @user.rounds.reverse
  @correct_on_first = first_guess_correct(@rounds)
  erb :'users/show'
end


