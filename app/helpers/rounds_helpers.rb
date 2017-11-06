
def ammend_cards(round)
  @round_guesses = round.guesses
  cards = round.cards.to_a

  @round_guesses.each do |guess|
    if guess.correct == true
      cards = cards.reject { |card| card.id == guess.card.id }
    end
  end
  cards
end

def correctness(answer_correctness)
  if answer_correctness == 'correct'
    @message = "You got that correct!"
  elsif answer_correctness == 'incorrect'
    @message = "You got that incorrect :("
  end
  @message
end

def first_guess_correct(user_rounds)
@correct_on_first = {}

  @rounds.each do |round|
  count = 0
  guesses = round.guesses

  round.cards.each do |card|
    card_guesses = guesses.select { |guess| guess.card == card}
      if card_guesses.length == 1
        count += 1
      end
    end
  @correct_on_first[round.id] = count
  end
  @correct_on_first
end
