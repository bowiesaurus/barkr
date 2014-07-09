class RemovePetIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :pet_id, :integer
  end
end
