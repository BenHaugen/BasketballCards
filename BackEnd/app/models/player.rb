class Player < ApplicationRecord
  has_many :player_cards
  has_many :users, through: :player_cards
end
