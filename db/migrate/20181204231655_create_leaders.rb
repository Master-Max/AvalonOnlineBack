class CreateLeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :leaders do |t|
      t.integer :round_id

      t.integer :player_id

      t.timestamps
    end
  end
end
