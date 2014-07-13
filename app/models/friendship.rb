class Friendship < ActiveRecord::Base
  belongs_to :owner
  belongs_to :friend, :class_name => "Owner"
end
