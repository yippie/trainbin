class AddNametoTrackandCar < ActiveRecord::Migration
  def change
  	add_column :cars, :name, :string
  	add_column :tracks, :name, :string
  end
end
