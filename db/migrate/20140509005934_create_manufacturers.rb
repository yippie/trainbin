class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.boolean :control
      t.boolean :track
      t.boolean :trains
      t.references :User, index: true

      t.timestamps
    end
  end
end
