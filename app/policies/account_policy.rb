class AccountPolicy < ApplicationPolicy 

	def index?
	  user.present?
	end


end
