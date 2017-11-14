class CreateServiceComments < ActiveRecord::Migration[5.1]
  def change
    create_table :service_comments do |t|
      t.string :store
      t.string :date
      t.string :contacted_manager
      t.string :store_manager
      t.text :body
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
