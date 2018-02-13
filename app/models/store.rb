class Store < ApplicationRecord
  belongs_to :account
  has_many :service_records
 
  validates :account_id, presence: true 
  


end
