class AddUserimageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userimage_id, :text
  end
end
