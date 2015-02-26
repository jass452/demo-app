class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :b_code
      t.integer :zip
      t.integer :prize

      t.timestamps null: false
    end
  end
end
