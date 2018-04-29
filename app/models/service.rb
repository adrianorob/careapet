class Service < ApplicationRecord
  has_one :user
  has_many :user_tasks, through: :user
  belongs_to :buyer, class_name: 'User'
  belongs_to :caregiver, class_name: 'User'
end

