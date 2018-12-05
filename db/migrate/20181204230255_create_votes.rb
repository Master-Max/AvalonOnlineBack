class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :player_id
      t.integer :leader_id

      t.string :choice

      t.timestamps
    end
  end
end
