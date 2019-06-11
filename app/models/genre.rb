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

	enum genre: { Food_and_Drink: 0, Fashion: 1, Daily_necessities: 2, General_goods: 3, Local_food: 4, Select_shop: 5 }

end
