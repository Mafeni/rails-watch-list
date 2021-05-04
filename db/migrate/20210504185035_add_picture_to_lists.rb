class AddPictureToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :picture, :string
  end
end
