class User < ActiveRecord::Base
  has_many :pets, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, uniqueness: true, presence: true
  validates :location, presence: true
  validates :bio, length: { maximum: 300, too_long: "%{count} characters is the maximum allowed" }
  validates :pet_id, presence: true
end
