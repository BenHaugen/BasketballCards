class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :team_name, :img, :position, :weight_pounds, :height_feet, :height_inches, :logo

  has_many :player_cards
  has_many :users, through: :player_cards
end
