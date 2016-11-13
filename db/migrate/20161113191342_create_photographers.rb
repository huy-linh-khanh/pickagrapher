class CreatePhotographers < ActiveRecord::Migration[5.0]
  def change
    create_table :photographers do |t|
      t.text :busy_dates
      t.references :user_account, index: true

      t.timestamps
    end
  end
end
