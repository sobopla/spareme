class Roundup < ApplicationRecord
  include ActionView::Helpers::NumberHelper
	belongs_to :user, optional: true
	validates :trans_id, uniqueness: true

  monetize :amount_cents
  #monetize :amount_paid, :as => "amount"

	before_save :calculate_roundup

	def calculate_roundup #logic to calculate the round up # create the roundup object and pass the amt as an object, before it saves the object
  # it hits the function 

    binding.pry
    self.rounded = self.amount.floor +1 - self.amount 
    # up = (n/100 +1)*100 
    # up - self.amount_cents
    # rounded_cents = x

    
	end
  # method to print
  # def print_amount(amt)
  #   number_to_currency(amt / 100.0)
  # end 
  
end
