class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :partnumber
      t.string :notes
      t.string :scale
      t.string :tracktype
      t.integer :quantity
      t.references :User, index: true
      t.references :Manufacturer, index: true

      t.timestamps
    end
  end
end
