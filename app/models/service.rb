class Service < ApplicationRecord

  after_create :send_new_buyer_email, :send_new_caregiver_email

  has_one :user
  has_many :user_tasks, through: :user
  belongs_to :buyer, class_name: 'User'
  belongs_to :caregiver, class_name: 'User'

  private

  def send_new_buyer_email
    ServiceMailer.new_service_buyer(self).deliver_now
  end

  def send_new_caregiver_email
    ServiceMailer.new_service_caregiver(self).deliver_now
  end

end



