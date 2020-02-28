class RemovePhotoStuff < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :photo
    remove_column :flats, :photo
  end
end
