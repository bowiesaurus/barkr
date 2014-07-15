class Message < ActiveRecord::Base
  belongs_to :sender, class_name: 'Owner'
  belongs_to :recipient, class_name: 'Owner'

  validates :sender_id, presence: true
  validates :recipient_id, presence: true
  validates :body, length: { maximum: 300, too_long: "%{count} characters is the maximum allowed" }
  validates :title, presence: true
end
