class CreateVegetables < ActiveRecord::Migration[5.1]
  def change
    create_table :vegetables do |t|
      t.string :jenis
      t.integer :jumlah
    end
  end
end
