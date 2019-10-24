class DogSitter < ApplicationRecord
	has_many :strolls , dependent: :destroy
	has_many :dogstrolls, through: :strolls
    belongs_to :city

end
