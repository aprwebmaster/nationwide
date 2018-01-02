class AccountPolicy < ApplicationPolicy 

	def index?
	user.present?
	end

	def create?
    user.present? && (user.admin? || user.staff?)
  	end

	def destroy?
    user.present? && user.admin?
  	end


end
