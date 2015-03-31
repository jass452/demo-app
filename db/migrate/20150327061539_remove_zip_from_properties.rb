class RemoveZipFromProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :Zip, :integer
  end
end
