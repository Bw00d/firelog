class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
