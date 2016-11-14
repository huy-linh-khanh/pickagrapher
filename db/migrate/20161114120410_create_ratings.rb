class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :user, foreign_key: true
      t.references :photographer, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
