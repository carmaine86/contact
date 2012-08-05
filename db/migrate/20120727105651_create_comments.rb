class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :customer

      t.timestamps
    end
    add_index :comments, :customer_id
  end
end
