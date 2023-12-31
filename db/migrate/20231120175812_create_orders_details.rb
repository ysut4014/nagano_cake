class CreateOrdersDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_details do |t|
      t.integer :item_id, null: false
      t.foreign_key :items, column: :item_id
      t.integer :order_id, null: false
      t.foreign_key :orders, column: :order_id
      t.integer :quantity, null: false
      t.integer :price, null: false
      t.integer :making_status, null: false, default: 0

      t.timestamps
    end
  end
end
