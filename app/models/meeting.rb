class Meeting < ApplicationRecord

	def self.search(search)
    where("name ILIKE ? OR subcontractor ILIKE ?", "%#{search}%", "%#{search}%") 
    end

end
