class CreateAggregateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :aggregate_ratings do |t|
      t.float :score, default: 0
      t.integer :rate_count, default: 0
      t.references :photographer, foreign_key: true

      t.timestamps
    end
  end
end
