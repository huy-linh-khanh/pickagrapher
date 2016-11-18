class AddCategoryToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :category, foreign_key: true
  end
end
