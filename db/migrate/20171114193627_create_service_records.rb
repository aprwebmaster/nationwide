class CreateServiceRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :service_records do |t|
      t.string :store
      t.string :date
      t.string :manager
      t.string :service_type
      t.boolean :report_in
      t.text :body
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
