class AddStateToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :state, :string
  end
end
