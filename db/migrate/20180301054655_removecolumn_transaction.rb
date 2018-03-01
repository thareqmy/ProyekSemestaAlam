class RemovecolumnTransaction < ActiveRecord::Migration[5.1]
  def change
    remove_column :transactions, :jumlahtransaksi
  end
end
