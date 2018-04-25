class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :caregiver, :phone_number, :photo, :photo_cache, :address, :age, :profession, :description, :location_type, :bank_number, :bank_agency, :bank_account])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :caregiver, :phone_number, :photo, :photo_cache, :address, :age, :profession, :description, :location_type, :bank_number, :bank_agency, :bank_account])
  end


end
