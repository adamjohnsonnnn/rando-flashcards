post '/rounds/new' do
  @deck = Deck.find(params[:id])
  if logged_in?
    @round = Round.new(deck: @deck, player: current_user)
    if @round.save
      redirect "/rounds/#{@round.id}"
    else
      @errors = "We're sorry, an error occured loading this deck. Please try again later"
      erb :'decks/show'
    end
  else
    @round = Round.create(deck: @deck)
    redirect "/rounds/#{@round.id}"
  end
end

get '/rounds/:id' do
  answer_correctness = params[:display]
  if params[:previous_card_id]
    @previous_card = Card.find(params[:previous_card_id])
  end
  @message = correctness(answer_correctness)
  @round = Round.find(params[:id])
  @deck = Deck.find(@round.deck_id)
  @round_cards = ammend_cards(@round)
  @round_cards = @round_cards.shuffle
  if @round_cards.length > 0
    erb :'cards/show'
  elsif logged_in?
    redirect "/users/#{current_user.id}"
  else
    @good_round_message = "Great round! Try another, or login to keep track of stats."
    @decks = Deck.all
    erb :'/decks/index'
  end
end
