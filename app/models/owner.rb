class Owner < ActiveRecord::Base
  has_many :pets

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_photo, ProfilePhotoUploader

  validates_presence_of :email, message: "can't be blank"
  # validates_presence_of :password_confirmation, message: "can't be blank"
  # validates :profile_photo, presence: true
end
