class Account < ApplicationRecord
	has_many :service_records
	has_many :service_comments
	has_many :stores



end
