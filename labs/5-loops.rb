# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

# EXERCISE
# Build a deck of cards. Given the following arrays of card data,
# use a loop to write out the cards to the screen.
clubs = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
diamonds = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
hearts = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
spades = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

# Sample output:
# 2 of Clubs
# 3 of Clubs
# 4 of Clubs
# ...etc
# Queen of Spades
# King of Spades
# Ace of Spades

puts "EXERCISE:"
clubs.each do |rank|
    puts "#{rank} of Clubs"
end
diamonds.each do |rank|
    puts "#{rank} of Diamonds"
end
hearts.each do |rank|
    puts "#{rank} of Hearts"
end
spades.each do |rank|
    puts "#{rank} of Spades"
end
puts

# CHALLENGE #1
# The arrays are identical for each suit and can be simplified by using
# a ranks array as seen below. Try to complete the exercise again by
# combining these arrays.
puts "CHALLENGE #1:"
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

suits.each do |suit|
    ranks.each do |rank|
        puts "#{rank} of #{suit}"
    end
end
puts

# CHALLENGE #2
# Deal a poker hand. Shuffle the deck and "deal" (i.e. display) a 5 card hand (i.e. 5 cards from the deck).
# You will want to look at the documentation for Arrays: https://ruby-doc.org/core-2.7.0/Array.html
puts "CHALLENGE #2"
cards = []
for suit in suits
    for rank in ranks
        cards.append("#{rank} of #{suit}")
    end
end

hand = cards.sample(5)
puts hand
puts
