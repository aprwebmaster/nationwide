class ServiceRecord < ApplicationRecord
  belongs_to :store 
  
  
  validates :store_id, presence: true 
end
