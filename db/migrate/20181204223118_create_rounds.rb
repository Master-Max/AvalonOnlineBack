class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.integer :game_id

      t.string :current_phase

      t.integer :current_leader
      t.integer :required_team_size
      t.integer :fail_count

      t.string :quest_result

      t.boolean :started
      t.boolean :completed

      t.timestamps
    end
  end
end
