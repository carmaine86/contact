class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :address
      t.date :dateofborn

      t.timestamps
    end
  end
end
