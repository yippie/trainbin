class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :modelnumber
      t.string :notes
      t.string :scale
      t.string :cartype
      t.integer :quantity
      t.references :User, index: true
      t.references :Manufacturer, index: true
      t.references :Railroad, index: true

      t.timestamps
    end
  end
end
