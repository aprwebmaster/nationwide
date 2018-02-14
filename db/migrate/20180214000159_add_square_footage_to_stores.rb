class AddSquareFootageToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :square_footage, :string
  end
end
