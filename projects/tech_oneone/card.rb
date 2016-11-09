class Card
  attr_reader :value, :suite
  def initialize(value, suite)
    @value = value
    @suite = suite
  end
  def face
    case @value  #not self.value
    when 1
      "Ace"
    when 11
      "Jack"
    when 12
      "Queen"
    when 13
      "King"
    else
      @value
    end
  end
  def to_s
    "#{face} of #{suite}"
  end
end

# ace_spades = Card.new(1, "spade")
# p ace_spades.value
# p ace_spades.face
# three_hearts = Card.new(3, "hearts")
# p three_hearts.face

# card1 = Card.new(3, "spades")
# card2 = Card.new(13, "hearts")
# # puts card1.face == 3
# # puts card2.face == "King"
# puts card1
# puts card2
