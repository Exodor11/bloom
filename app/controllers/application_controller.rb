class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :bio, :contact_text, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :bio, :contact_text, :photo])
    
    # For additional fields in app/views/devise/invitations/edit.html.erb
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :bio, :contact_text, :photo])
  end

end
