class CreateProjections < ActiveRecord::Migration[5.0]
  def change
    create_table :projections do |t|
      t.date    :due_date
      t.decimal :amount, :precision => 8, :scale => 2
      t.integer :user_id
      t.string  :description
      t.boolean :cash

      t.timestamps
    end
  end
end
