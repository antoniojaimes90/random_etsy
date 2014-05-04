class Product < ActiveRecord::Base
	validates :productId, presence: true, uniqueness: true)
end
