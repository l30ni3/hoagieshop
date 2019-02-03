# frozen_string_literal: true

class CreateSauces < ActiveRecord::Migration[5.2]
  def change
    create_table :sauces do |t|
      t.integer :sID
      t.string :sName

      t.timestamps
    end
  end
end
