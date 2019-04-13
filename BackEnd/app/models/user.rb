class User < ApplicationRecord
  has_many :player_cards
  has_many :players, through: :player_cards

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, presence: true
end
