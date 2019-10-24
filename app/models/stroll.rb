class Stroll < ApplicationRecord
	belongs_to :dog_sitter
	belongs_to :city
	has_many :dogsstrolls
	has_many :dogs , through: :dogsstrolls
end
