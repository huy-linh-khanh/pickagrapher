class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.references :portfolio, foreign_key: true
      t.references :category, foreign_key: true
      t.text :description
      t.datetime :create_time

      t.timestamps
    end
  end
end
