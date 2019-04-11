class CreatePlayerCards < ActiveRecord::Migration[5.2]
  def change
    create_table :player_cards do |t|
      t.integer :user_id
      t.integer :player_id
      
      t.timestamps
    end
  end
end
