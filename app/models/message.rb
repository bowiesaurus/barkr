class Message < ActiveRecord::Base
  belongs_to :owner

  validates :sender, presence: true
  validates :recipient, presence: true
  validates :body, length: { maximum: 300, too_long: "%{count} characters is the maximum allowed" }
end
