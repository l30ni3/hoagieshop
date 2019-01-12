class CreateHoagies < ActiveRecord::Migration[5.2]
  def change
    create_table :hoagies do |t|
      t.Integer :hoagieID
      t.string :bread
      t.string :main1
      t.string :main2
      t.string :veggies1
      t.string :veggies2
      t.string :veggies3
      t.string :veggies4
      t.string :veggies5
      t.string :sauce1
      t.string :sauce2
      t.date :created
      t.string :user
      t.Integer :orderID

      t.timestamps
    end
  end
end
