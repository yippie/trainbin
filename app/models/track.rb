class Track < ActiveRecord::Base
	def self.owner(user)
	    where("user_id = ?", user.id)
	end

	belongs_to :User
	belongs_to :Manufacturer
end
