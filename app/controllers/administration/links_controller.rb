class Administration::LinksController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to [:administration, @link], notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: [:administration, @link] }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to [:administration, @link], notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to administration_links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_row_order
    @link = Link.find(params[:item][:item_id])
    @link.row_order_position = params[:item][:row_order_position]
    @link.save
    head :created
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:name, :url, :image, :subtitle)
    end
end
