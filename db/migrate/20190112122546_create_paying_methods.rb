class CreatePayingMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :paying_methods do |t|
      t.string :provider

      t.timestamps
    end
  end
end
