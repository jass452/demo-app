class RemoveBCodeFromProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :b_code, :integer
  end
end
