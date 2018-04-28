class Service < ApplicationRecord
  has_one :user
  has_one :user_tasks, through: :user
  belongs_to :buyer, class_name: 'User'
end
