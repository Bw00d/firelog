class Category < ApplicationRecord
	belongs_to :user
	validates :description, presence: true, uniqueness: :true

	
end

