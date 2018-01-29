class Meeting < ApplicationRecord

	def self.search(search)
    where("name ILIKE ? OR subcontractor ILIKE ? OR division ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

end
