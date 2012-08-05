class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.references :customer

      t.timestamps
    end

     add_index :products, :customer_id
  end
end
