class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_many :services
  has_many :pets, through: :services
  has_many :tasks, through: :services

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
