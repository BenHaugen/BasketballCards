class User < ApplicationRecord
  has_many :player_cards
  has_many :player_cards, through: :users

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, presence: true
end
