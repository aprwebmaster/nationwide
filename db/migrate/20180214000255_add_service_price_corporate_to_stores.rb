class AddServicePriceCorporateToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :sp_corp, :string
  end
end
