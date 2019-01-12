class CreateBreads < ActiveRecord::Migration[5.2]
  def change
    create_table :breads do |t|
      t.Integer :bID
      t.string :bType
      t.string :bName

      t.timestamps
    end
  end
end
