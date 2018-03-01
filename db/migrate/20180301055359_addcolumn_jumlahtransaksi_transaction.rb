class AddcolumnJumlahtransaksiTransaction < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :jumlahtransaksi, :integer
  end
end
