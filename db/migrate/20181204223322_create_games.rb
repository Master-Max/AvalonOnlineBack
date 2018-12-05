class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :room_id

      t.integer :player_number
      t.integer :current_round

      t.string :winning_team

      t.timestamps
    end
  end
end
