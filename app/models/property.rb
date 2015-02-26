class Property < ActiveRecord::Base
	validates :zip, numericality: { only_integer: true }
	validates :prize, numericality: { only_integer: true }
end

