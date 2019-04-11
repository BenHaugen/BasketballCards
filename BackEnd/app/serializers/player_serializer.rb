class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :team_name, :img, :position, :weight, :height, :logo

  has_many :player_cards
  has_many :users, through: :player_cards
end
