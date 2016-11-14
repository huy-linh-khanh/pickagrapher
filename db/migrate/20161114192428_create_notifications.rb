class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.text :content
      t.datetime :create_time
      t.references :order, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
