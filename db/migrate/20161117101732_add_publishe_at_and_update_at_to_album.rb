class AddPublisheAtAndUpdateAtToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :publish_at, :datetime
    add_column :albums, :update_at, :datetime
  end
end
