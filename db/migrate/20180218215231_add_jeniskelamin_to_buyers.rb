class AddJeniskelaminToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :jeniskelamin, :string
  end
end
