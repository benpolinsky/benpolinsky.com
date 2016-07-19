class FrontController < ApplicationController
  layout 'home'
  def home
    @projects = Project.by_row_order.limit(4)
  end
  
  def contact
    message = params[:message]
    sender = params[:email]
    ContactMailer.hello(sender, message).deliver_now
    redirect_to root_path, notice: "Thanks!"
  end
  
  def send_message
    # message_params
  end
  
  def projects
    @projects = Project.by_row_order
  end
  
  def project
    @project = Project.friendly.find(params[:id])
  end
  
end
