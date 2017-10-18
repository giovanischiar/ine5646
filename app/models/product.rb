class Product < ApplicationRecord
	validates :name, presence: true
	validates :code, uniqueness: true
	validates :code, numericality: true
end
