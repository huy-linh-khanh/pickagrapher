class RenameUserAccountIdInPhotographerToUserId < ActiveRecord::Migration[5.0]
  def change
    rename_column :photographers, :user_account_id, :user_id
  end
end
