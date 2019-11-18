class ApplicationController < ActionController::Base
  before_action :authenticate_user!

     def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      # devise_parameter_sanitizer is a function of devise
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      # you would need to go to the nvew view, and add
      f.input :first_name
      f.input :last_name
      # and add this to the controller?
      # but don't hafe first name and last name
      # would need to create a migration


      # For additional in app/views/devise/registrations/edit.html.erb
      # devise provides stuff to update account information
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
