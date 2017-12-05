class Account < ApplicationRecord
	has_many :service_records, dependent: :destroy 
	has_many :service_comments, dependent: :destroy
	has_many :stores, dependent: :destroy



end
