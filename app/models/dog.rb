class Dog < ApplicationRecord
	has_many :dogstrolls
	has_many :strolls, through: :dogstrolls
    belongs_to :city

end
