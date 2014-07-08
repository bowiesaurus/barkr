class DropColorColumnFromPetsTable < ActiveRecord::Migration
  def change
    remove_column :pets, :color, :string
  end
end
