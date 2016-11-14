class CreatePriceRates < ActiveRecord::Migration[5.0]
  def change
    create_table :price_rates do |t|
      t.references :photographer, foreign_key: true
      t.references :category, foreign_key: true
      t.float :unit_rate
      t.float :travel_rate

      t.timestamps
    end
  end
end
