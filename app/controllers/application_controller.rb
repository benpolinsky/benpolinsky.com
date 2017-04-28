class ApplicationController < ActionController::Base
  before_action :grab_links
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def error_list_for(model)
    model.errors.full_messages.join(", ")
  end
    
  protected
  
  def grab_links
    @links = Link.by_row_order
  end
  

end
