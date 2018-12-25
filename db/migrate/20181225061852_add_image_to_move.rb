class AddImageToMove < ActiveRecord::Migration
  def change
    add_column :moves, :image, :string
  end
end
