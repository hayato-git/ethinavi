# == Schema Information
#
# Table name: shops
#
#  id              :integer          not null, primary key
#  shop_name       :string
#  shop_image_id   :text
#  phonenum        :string
#  postalcode      :string
#  address         :text
#  description     :text
#  regular_holiday :string
#  access          :string
#  business_hours  :string
#  opening_date    :string
#  homepage        :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Shop < ApplicationRecord

	has_many :comments, dependent: :destroy
	has_many :genres, dependent: :destroy
	accepts_nested_attributes_for :genres, allow_destroy: true

	attachment :shop_image

	validates :shop_name, presence: true
	validates :phonenum, presence: true, length: { in: 10..11 }
	validates :postalcode, presence: true, length: { is: 7 }
	validates :address, presence: true
	validates :description, presence: true
	validates :regular_holiday, presence: true
	validates :access, presence: true
	validates :business_hours, presence: true
	# validates :opening_date, presence: true

end
