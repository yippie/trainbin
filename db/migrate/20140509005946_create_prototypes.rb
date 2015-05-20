class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :name
      t.string :notes
      t.string :enginetype
      t.string :manufacturer
      t.string :model
      t.references :User, index: true

      t.timestamps
    end
  end
end
