# frozen_string_literal: true

class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :street
      t.integer :number
      t.integer :postalCode
      t.string :city
      t.string :email
      t.integer :phone
      t.boolean :isBillingAdress

      t.timestamps
    end
  end
end
