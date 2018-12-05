class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :room_id

      t.string :role
      t.string :team

      t.boolean :leader
      

      t.timestamps
    end
  end
end
