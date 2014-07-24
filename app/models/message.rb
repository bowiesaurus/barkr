class Message < ActiveRecord::Base
  belongs_to :sender, class_name: 'Owner', foreign_key: :sender_id
  belongs_to :recipient, class_name: 'Owner', foreign_key: :recipient_id

  validates :sender_id, presence: true
  validates :recipient_id, presence: true
  validates :body, length: { maximum: 300, too_long: "%{count} characters is the maximum allowed" }
  validates :title, presence: true
end
