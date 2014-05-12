class CreateRailroads < ActiveRecord::Migration
  def change
    create_table :railroads do |t|
      t.string :name
      t.string :notes
      t.references :User, index: true

      t.timestamps
    end
  end
end
