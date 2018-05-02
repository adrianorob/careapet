class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @caregivers = User.where(caregiver: true)
    @buyers = User.where(caregiver: false)
  end
end
