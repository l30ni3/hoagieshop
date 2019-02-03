# frozen_string_literal: true

class CreateVeggies < ActiveRecord::Migration[5.2]
  def change
    create_table :veggies do |t|
      t.integer :vID
      t.string :vName

      t.timestamps
    end
  end
end
