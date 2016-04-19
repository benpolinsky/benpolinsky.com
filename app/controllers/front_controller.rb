class FrontController < ApplicationController
  before_filter :grab_links
  layout 'home'
  def home
    @projects = Project.all.limit(8)
  end
  
  def contact
  end
  
  def send_message
    # message_params
  end
  
  def projects
    @projects = Project.all
  end
  
  def project
    @project = Project.friendly.find(params[:id])
  end
  
  protected
  
  def grab_links
    @links = Link.all
  end
end
