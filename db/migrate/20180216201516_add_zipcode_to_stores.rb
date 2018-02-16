class AddZipcodeToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :zipcode, :string
  end
end
