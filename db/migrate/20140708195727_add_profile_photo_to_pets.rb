class AddProfilePhotoToPets < ActiveRecord::Migration
  def change
    add_column :pets, :profile_photo, :string
  end
end
