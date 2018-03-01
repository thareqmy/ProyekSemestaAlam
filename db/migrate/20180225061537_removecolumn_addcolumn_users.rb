class RemovecolumnAddcolumnUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :email
    add_column :users, :password_digest, :string
  end
end
