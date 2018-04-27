class Review < ApplicationRecord
  belongs_to :user

  validates :rating, :inclusion => { :in => 0..5 }
  validates :rating, numericality: { only_integer: true }
  validates :rating, presence: true
  validates :description, presence: true

end
