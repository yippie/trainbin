class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :modelnumber
      t.string :notes
      t.string :scale
      t.string :enginetype
      t.string :roadnumber
      t.boolean :own
      t.references :User, index: true
      t.references :Manufacturer, index: true
      t.references :Prototype, index: true
      t.references :Railroad, index: true

      t.timestamps
    end
  end
end
