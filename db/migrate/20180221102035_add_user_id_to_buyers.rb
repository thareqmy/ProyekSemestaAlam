class AddUserIdToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :user_id, :integer
  end
end
