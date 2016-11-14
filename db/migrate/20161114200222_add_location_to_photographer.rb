class AddLocationToPhotographer < ActiveRecord::Migration[5.0]
  def change
    add_reference :photographers, :location, foreign_key: true
  end
end
