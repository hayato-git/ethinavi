class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.text :shop_image_id
      t.string :phonenum
      t.string :postalcode
      t.text :address
      t.text :description
      t.string :regular_holiday
      t.string :access
      t.string :business_hours
      t.string :opening_date
      t.text :homepage

      t.timestamps
    end
  end
end
