class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.text :head_shot
      t.string :universe

      t.timestamps null: false
    end
  end
end
