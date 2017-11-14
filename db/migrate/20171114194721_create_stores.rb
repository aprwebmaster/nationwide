class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :chain
      t.string :store
      t.string :code
      t.string :address
      t.string :city
      t.integer :phone
      t.string :manager
      t.string :manager_phone
      t.string :manager_email
      t.string :assistant_1
      t.string :assistant_2
      t.string :region
      t.string :district
      t.boolean :active
      t.string :time
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
