class Owner < ActiveRecord::Base
  has_many :pets
  has_many :friendships

  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"

  has_many :messages, through: :friendships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_photo, ProfilePhotoUploader

  validates_uniqueness_of :email, message: "can't be blank"
  # validates_presence_of :password_confirmation, message: "can't be blank"
  # validates :profile_photo, presence: true
end
