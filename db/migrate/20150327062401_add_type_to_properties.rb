class AddTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :type, :string
  end
end
