class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :starts_date
      t.date :ends_date
      t.datetime :create_time
      t.references :user, foreign_key: true
      t.references :photographer, foreign_key: true
      t.integer :status, default: 0
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
