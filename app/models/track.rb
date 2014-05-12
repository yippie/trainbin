class Track < ActiveRecord::Base
  belongs_to :User
  belongs_to :Manufacturer
end
