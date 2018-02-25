class CreatePanens < ActiveRecord::Migration[5.1]
  def change
    create_table :panens do |t|
      t.integer :tambah
      t.integer :vegetable_id
      t.timestamps
    end
  end
end
