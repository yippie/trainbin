class Engine < ActiveRecord::Base
  belongs_to :User
  belongs_to :Manufacturer
  belongs_to :Prototype
  belongs_to :Railroad
end
