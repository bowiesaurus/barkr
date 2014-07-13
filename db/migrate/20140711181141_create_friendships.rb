class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :owner_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
