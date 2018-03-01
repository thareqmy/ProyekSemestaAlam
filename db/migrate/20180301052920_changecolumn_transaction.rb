class ChangecolumnTransaction < ActiveRecord::Migration[5.1]
  def change
    rename_column :transactions, :jumlah, :jumlahtransaksi
  end
end
