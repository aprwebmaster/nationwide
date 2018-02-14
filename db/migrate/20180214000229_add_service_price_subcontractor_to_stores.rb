class AddServicePriceSubcontractorToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :sp_sub, :string
  end
end
