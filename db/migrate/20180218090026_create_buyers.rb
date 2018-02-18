class CreateBuyers < ActiveRecord::Migration[5.1]
  def change
    create_table :buyers do |t|
      t.string :nama
      t.string :nohp

      t.timestamps
    end
  end
end
