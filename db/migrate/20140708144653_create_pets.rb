class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :color
      t.integer :weight
      t.text :personality
      t.text :favorite_things
      t.integer :owner_id

      t.timestamps
    end
  end
end
