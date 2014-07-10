class AddProfilePhotoToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :profile_photo, :string
  end
end
