class CreateShootingLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :shooting_locations do |t|
      t.references :photographer, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
