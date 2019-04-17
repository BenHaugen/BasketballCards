class TeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :team_name, :player1_first_name, :player1_last_name, :player1_team_name, :player1_img, :player1_id, :player2_first_name, :player2_last_name, :player2_team_name, :player2_img, :player2_id, :player3_first_name, :player3_last_name, :player3_team_name, :player3_img, :player3_id, :player4_first_name, :player4_last_name, :player4_team_name, :player4_img, :player4_id, :player5_first_name, :player5_last_name, :player5_team_name, :player5_img, :player5_id
  belongs_to :user

end
