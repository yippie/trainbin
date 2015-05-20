class Engine < ActiveRecord::Base
	def self.owner(user)
	    where("user_id = ?", user.id)
	end

	belongs_to :User
	belongs_to :Manufacturer
	belongs_to :Prototype
	belongs_to :Railroad
end
