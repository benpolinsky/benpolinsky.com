class AdministrationController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || administration_root
  end
end