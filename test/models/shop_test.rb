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

require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
