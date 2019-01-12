class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.Integer :orderId
      t.date :date
      t.Integer :userID
      t.Integer :sumTotal
      t.date :estDelivery
      t.string :hasItems

      t.timestamps
    end
  end
end
