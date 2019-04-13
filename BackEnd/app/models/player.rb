require 'pry'
class Player < ApplicationRecord
  require 'httparty'

  has_many :player_cards
  has_many :users, through: :player_cards

end
