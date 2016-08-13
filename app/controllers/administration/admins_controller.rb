class Administration::AdminsController < AdministrationController

  def edit
    @admin = Admin.find(params[:id])
  end
  
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(admin_params)
      redirect_to [:edit, :administration, @admin], notice: "Updated!"
    else
      redirect_to [:edit, :administration, @admin], notice: errors_for(@admin)
    end
  end
  
  
  private
  
  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end