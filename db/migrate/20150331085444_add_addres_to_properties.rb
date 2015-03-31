class AddAddresToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :address, :string
  end
end
