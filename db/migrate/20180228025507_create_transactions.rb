class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :vegetable_id
      t.integer :user_id
      t.integer :pembeli_id
      t.integer :jumlah
      t.timestamps
    end
  end
end
