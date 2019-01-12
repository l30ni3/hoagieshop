class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :orderId
      t.date :date
      t.integer :userID
      t.integer :sumTotal
      t.date :estDelivery
      t.string :hasItems

      t.timestamps
    end
  end
end
