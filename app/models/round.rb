class Round < ApplicationRecord
  # Remember to create a migration!
  belongs_to :player, class_name: "User"
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :deck



end

