class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   

         def admin?
         	role == 'admin'
         end

         def staff?
         	role == 'staff'
         end

         def subcontractor?
         	role == 'subcontractor'
         end
         
end
