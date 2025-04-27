require_relative 'card'
require_relative 'error'

class Deck
  # cards that can be wished for, etc.
  RANKS = (2..14).to_a.freeze
  # suit 0 = colorless (special cards)
  SUITS = (0..4).to_a.freeze
  SPECIALS = [1, Card::DRAGON, Card::PHOENIX, Card::DOG].freeze
  # now, define the deck...
  DECK = (
    (1..4).map { |suit| RANKS.map { |rank| Card.new(suit, rank) } } +
    SPECIALS.map { |rank| Card.new(0, rank) }
  ).flatten.freeze

  def self.deal!(players)
    raise "wrong number of players" unless players.size == 4
    cards = DECK.shuffle
    players.each do |player|
      player.assign_hand!(cards.shift(14))
    end

  end

  def self.test_hand
    DECK.shuffle[0..13]
  end

end

