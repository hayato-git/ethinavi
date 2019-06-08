# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  genre      :integer
#  shop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord

	belongs_to :shop

end
