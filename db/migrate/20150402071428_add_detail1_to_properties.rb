class AddDetail1ToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image1, :string
    add_column :properties, :image2, :string
    add_column :properties, :image3, :string
  end
end
