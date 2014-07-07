class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.integer :pet_id
      t.text :bio

      t.timestamps
    end
  end
end
