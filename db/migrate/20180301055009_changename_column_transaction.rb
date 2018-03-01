class ChangenameColumnTransaction < ActiveRecord::Migration[5.1]
  def change
    rename_column :transactions, :pembeli_id,:buyer_id
  end
end
