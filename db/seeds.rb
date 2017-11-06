# 20.times do

#   deck = Deck.create!(name: Faker::Simpsons.character, description: Faker::Simpsons.quote)

#   5.times do
#     card = Card.create!(question: Faker::HarryPotter.quote, answer: Faker::HarryPotter.location, deck: deck)
#   end

# end

creator = User.new(username: "admin", password: "password")


neema_deck = Deck.create!(name: "So, you think you know the Kennedy's???", description: "Facts and questions about the first family and their tragic life.", photo_url: "http://www.history.com/s3static/video-thumbnails/AETN-History_VMS/17/699/History_Kennedy_Family_Tree_SF_HD.jpg", creator: creator)

first_card = Card.create!(question: "Which of JFK's sibs was given a labotomy?", answer: "Rosemary", deck: neema_deck)
second_card = Card.create!(question: "How many Kennedy bros were sleeping with Marilyn Monroe?", answer: "2", deck: neema_deck)
third_card = Card.create!(question: "What year did RKF get shot?", answer: "1968", deck: neema_deck)
fourth_card = Card.create!(question: "Who was Rose Kennedy's favorite child?", answer: "Bobby", deck: neema_deck)
fifth_card = Card.create!(question: "Why was Kathleen 'Kick' Kennedy ostracized from her family?", answer: "She married a protestant", deck: neema_deck)
sixth_card = Card.create!(question: "Which son did Joe Sr. refer to as Golden Boy?", answer: "Joe Jr.", deck: neema_deck)


basic_math_deck = Deck.create!(name: "Basic Math", description: "Answer basic math questions, because you're basic.", photo_url: "https://cdn.thinglink.me/api/image/800073820168781826/1240/10/scaletowidth", creator: creator)

math_first_card = Card.create!(question: "5 + 137", answer: "142", deck: basic_math_deck)
math_second_card = Card.create!(question: "625 / 5", answer: "125", deck: basic_math_deck)
math_third_card = Card.create!(question: "30 percent of 700", answer: "210", deck: basic_math_deck)
math_fourth_card = Card.create!(question: "412 + 150", answer: "562", deck: basic_math_deck)
math_fifth_card = Card.create!(question: "23 * 7", answer: "161", deck: basic_math_deck)
math_sixth_card = Card.create!(question: "15^2", answer: "225", deck: basic_math_deck)

nineties = Deck.create!(name: "Nineties", description: "So much for Reddit nostalgia about the 90's", creator: creator)

nineties_first_card = Card.create!(question: "66 percent of what band kissed on SNL. Causing a minor controversy.", answer: "nirvana", deck: nineties)
nineties_second_card = Card.create!(question: "Are those tiddleywinks? No, those are...", answer: "pogs", deck: nineties)

nineties_third_card = Card.create!(question: "What single letter caused the nation to mock the Vice President?", answer: "e", deck: nineties)

nineties_fourth_card = Card.create!(question: "In response to a failed assassination plot, what country did Bill Clinton authorize the bombing of?", answer: "iraq", deck: nineties)

nineties_fifth_card = Card.create!(question: "What computer company made headlines with the introduction of their colorful line of internet ready computers?", answer: "apple" deck: nineties)

punchlines_deck = Deck.create!(name: "Punchlines", description: "Where's Duke?", creator: creator)



punchlines_first_card = Card.create!(question: "Take my wife...", answer: "please", deck: punchlines_deck)

punchlines_second_card = Card.create!(question: "What did Jay-Z call his girlfriend before they got married?", answer: "Feyonce", deck: punchlines_deck)

  punchlines_second_card = Card.create!(question: "What do you call a dinosaur with a extensive vocabulary?", answer: "thesaurus", deck:punchlines_deck)
#   thesaurus: "What do you call a dinosaur with a extensive vocabulary?",
#   stick: "What do you call a malfunctioning boomerang? (A)",
#   nightmare: "What type of horse is nocturnal?"
# }

# pratchett_characters = {
#   vetinari: "Veni Vedi...",
#   carrot: "Tallest dwarf in the night watch.",
#   ogg: "Last name of both a lecherous witch AND one of Hagrids predecessors at Hogwarts.",
#   susan: "First name of Deaths grandaughter.",
#   rincewind: "His hat reads: Wizzard"
# }













