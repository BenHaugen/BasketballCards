class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  has_many :player_cards
  has_many :player_cards, through: :users
end
