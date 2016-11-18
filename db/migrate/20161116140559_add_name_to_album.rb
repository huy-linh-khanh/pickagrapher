class AddNameToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :name, :string
  end
end
