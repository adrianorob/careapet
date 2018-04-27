class Service < ApplicationRecord
  has_many :users
  belongs_to :buyer, class_name: 'User'
end
