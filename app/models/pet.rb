class Pet < ActiveRecord::Base
  belongs_to :user

  mount_uploader :profile_photo, ProfilePhotoUploader

  validates :name, uniqueness: true
  validates :breed, presence: true
  validates :age, numericality: true
  validates :weight, numericality: true
  validates :personality, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  validates :favorite_things, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
  validates :owner_id, presence: true
end
