post '/rounds/:round_id/cards/:id/guesses' do
  @card = Card.find(params[:id])
  guess = params[:answer]
  card = Card.find(params[:id])
  if guess == card.answer
    @guess = Guess.create(round_id: params[:round_id], card: card, correct: true)
    redirect "/rounds/#{params[:round_id]}?display=correct&previous_card_id=#{@card.id}"
  else
    @guess = Guess.create(round_id: params[:round_id], card: card, correct: false)
    redirect "/rounds/#{params[:round_id]}?display=incorrect&previous_card_id=#{@card.id}"
  end
end
