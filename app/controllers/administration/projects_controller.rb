class Administration::ProjectsController < AdministrationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.by_row_order
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to [:administration, @project], notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: [:administration, @project] }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to [:administration, @project], notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to administration_projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def update_row_order
    @project = Project.find(params[:item][:item_id])
    @project.row_order_position = params[:item][:row_order_position]
    @project.save
    head :created
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :client, :site_url, :description, :image, :public_repo, :creation_date)
    end
end
