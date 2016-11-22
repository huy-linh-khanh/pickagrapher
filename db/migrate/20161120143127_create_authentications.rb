class CreateAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      
      t.timestamps
    end
    add_index :authentications, :provider
    add_index :authentications, :uid
    add_index :authentications, [:provider, :uid], unique: true
  end
end
