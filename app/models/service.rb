class Service < ApplicationRecord
  has_many :users
  has_many :user_tasks, through: :users
  belongs_to :buyer, class_name: 'User'
end

