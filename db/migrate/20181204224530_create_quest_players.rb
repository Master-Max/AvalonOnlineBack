class CreateQuestPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :quest_players do |t|
      t.integer :player_id
      t.integer :round_id

      t.string :choice

      t.timestamps
    end
  end
end
