class AddFrequencyToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :frequency, :string
  end
end
