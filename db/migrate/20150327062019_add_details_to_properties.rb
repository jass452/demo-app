class AddDetailsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :bath, :integer
    add_column :properties, :bed, :integer
    add_column :properties, :pool, :integer
  end
end
