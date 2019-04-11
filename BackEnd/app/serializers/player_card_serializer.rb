class PlayerCardSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :player
  belongs_to :user
end
