class AddAttributeToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :alamat, :string
    add_column :buyers, :nohpwa, :string
    add_column :buyers, :email, :string
    add_column :buyers, :facebook, :string
  end
end
