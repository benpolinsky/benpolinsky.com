class ApplicationController < ActionController::Base
  before_action :grab_links, :resume_path
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def error_list_for(model)
    model.errors.full_messages.join(", ")
  end
  
  def after_sign_in_path_for(resource)
     administration_root_path || root_path
   end
  protected
  
  def grab_links
    @links = Link.by_row_order
  end
  
  def resume_path
    resume = Resume.published.first 
    @resume_path = if resume && Resume.published.first.document.url.present?
      resume.document.url 
    else
      "/ben_polinsky_resume_april_2017.pdf"
    end
  end
  

end
