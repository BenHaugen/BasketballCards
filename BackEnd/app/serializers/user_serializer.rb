class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  has_many :player_cards
  has_many :players, through: :player_cards
  has_many :teams
end
