class Pet < ActiveRecord::Base
  belongs_to :owner
  mount_uploader :profile_photo, ProfilePhotoUploader
  has_many :friends, class_name: 'Pet'

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, numericality: true
  validates :weight, numericality: true
  validates :personality, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  validates :favorite_things, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  # validates :owner, presence: true
  validates_presence_of :profile_photo
end
