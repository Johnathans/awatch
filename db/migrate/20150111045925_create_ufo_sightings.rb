class CreateUfoSightings < ActiveRecord::Migration
  def change
    create_table :ufo_sightings do |t|
      t.string :address
      t.string :craft
      t.string :details
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
