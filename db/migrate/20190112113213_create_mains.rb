class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.integer :mID
      t.string :mType
      t.string :mName

      t.timestamps
    end
  end
end
