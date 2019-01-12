class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surName
      t.string :adr
      t.string :payMethod
      t.integer :ID
      t.string :role

      t.timestamps
    end
  end
end
