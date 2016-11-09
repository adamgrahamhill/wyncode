require './card'


class Deck
  attr_reader :cards
  def initialize
    @cards = []

    i = 0          ###solution with double loop
    suit = ["hearts", "diamonds","spades", "clubs"]
    while i < suit.length do
      current_suit = suit[i]
      13.times do |num|
        @cards << Card.new(num + 1, current_suit)
      end
      i += 1
    end
  end
  # 13.times do |i|  #original solution
  # @cards << Card.new(i + 1, "Hearts")
  # @cards << Card.new(i + 1, "Spades")
  # @cards << Card.new(i + 1, "Diamonds")
  # @cards << Card.new(i + 1, "Clubs")
  # @cards.shuffle!
  def draw
    drawn_card = @cards.sample
    @cards.delete(drawn_card) #pop
  end
end





 # puts ace_of_spaces = Card.new(1, "spades")
# #tests
# deck = Deck.new

deck = Deck.new
card = deck.draw
puts card.is_a? Card
puts deck.cards.count == 51

puts deck.cards
