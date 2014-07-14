class DropVotesTable < ActiveRecord::Migration
  def up
    drop_table :votes
  end

  def down
    add_table :votes
  end
end
