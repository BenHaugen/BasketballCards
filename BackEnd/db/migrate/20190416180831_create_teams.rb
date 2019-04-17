class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.string :team_name
      t.string :player1_first_name
      t.string :player1_last_name
      t.string :player1_team_name
      t.string :player1_img
      t.integer :player1_id
      t.string :player2_first_name
      t.string :player2_last_name
      t.string :player2_team_name
      t.string :player2_img
      t.integer :player2_id
      t.string :player3_first_name
      t.string :player3_last_name
      t.string :player3_team_name
      t.string :player3_img
      t.integer :player3_id
      t.string :player4_first_name
      t.string :player4_last_name
      t.string :player4_team_name
      t.string :player4_img
      t.integer :player4_id
      t.string :player5_first_name
      t.string :player5_last_name
      t.string :player5_team_name
      t.string :player5_img
      t.integer :player5_id

      t.timestamps
    end
  end
end
