class AddJumlahpanenToVegetables < ActiveRecord::Migration[5.1]
  def change
    add_column :vegetables, :jumlahpanen, :integer
  end
end
