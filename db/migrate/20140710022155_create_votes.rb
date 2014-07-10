class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voting_pet_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
