class ServiceComment < ApplicationRecord
  belongs_to :account
  validates :body, length: { minimum: 5}
  validates :body, presence: true
  validates :account_id, presence: true 
  
end
