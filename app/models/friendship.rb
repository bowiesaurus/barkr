class Friendship < ActiveRecord::Base
  belongs_to :owner
  belongs_to :friend, :class_name => "Pet"

  has_many :messages, as: :friendships, source: :owner

  validates :owner, presence: true
  validates :friend, uniqueness: { scope: :owner_id, message: "You've already friended this pup." }
end
