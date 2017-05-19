class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.boolean :two_slices
      t.boolean :one_bar
      t.boolean :full_farsh

      t.timestamps
    end
  end
end
