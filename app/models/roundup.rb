class Roundup < ApplicationRecord
	belongs_to :user, optional: true
	validates :trans_id, uniqueness: true

	before_save :calculate_roundup

	def calculate_roundup
    binding.pry
    self.rounded = self.amount.floor +1 - self.amount 

    #logic to calculate the round up
	end

  # create the roundup object and pass the amt as an object, before it saves the object
  # it hits the function 

end
