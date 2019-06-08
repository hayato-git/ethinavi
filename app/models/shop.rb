class Shop < ApplicationRecord

	has_many :comments, dependent: :destroy
	has_many :genres, dependent: :destroy

end
