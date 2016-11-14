class Review < ActiveRecord::Base
	validates :product_id, presence: true
	validates :review, presence: true

end
