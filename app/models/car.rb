class Car < ActiveRecord::Base
  belongs_to :User
  belongs_to :Manufacturer
  belongs_to :Railroad
end
