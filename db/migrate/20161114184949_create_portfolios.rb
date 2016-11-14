class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.references :photographer, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
