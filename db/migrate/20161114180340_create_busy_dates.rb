class CreateBusyDates < ActiveRecord::Migration[5.0]
  def change
    create_table :busy_dates do |t|
      t.references :photographer, foreign_key: true
      t.text :dates

      t.timestamps
    end
  end
end
