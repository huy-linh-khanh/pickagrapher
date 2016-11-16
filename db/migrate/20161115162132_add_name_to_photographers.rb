class AddNameToPhotographers < ActiveRecord::Migration[5.0]
  def change
    add_column :photographers, :name, :string
  end
end
