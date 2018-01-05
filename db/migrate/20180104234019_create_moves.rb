class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :character_name
      t.string :move_name

      t.timestamps null: false
    end
  end
end
