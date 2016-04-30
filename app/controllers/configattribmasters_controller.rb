class ConfigattribmastersController < ApplicationController
  before_action :set_configattribmaster, only: [:show, :edit, :update, :destroy]
  def index
    @configattribmasters = Configattribmaster.all
  end
  def show
    redirect_to configattribs_path
  end
  def new
    @configattribmaster = Configattribmaster.new
    @configattribmaster.configattrib_id = params[:id]
    @configattrib=Configattrib.find(params[:id])
  end

  # GET /configattribmasters/1/edit
  def edit
    configattrib_id = Configattribmaster.find(params[:id]).configattrib_id
    @configattrib = Configattrib.find(configattrib_id)

  end

  # POST /configattribmasters
  # POST /configattribmasters.json
  def create
    @configattribmaster = Configattribmaster.new(configattribmaster_params)
    @configattribmaster.configattrib_id=session[:configattrib_id]
    respond_to do |format|
      if @configattribmaster.save
        format.html { redirect_to @configattribmaster, notice: 'Configattribmaster was successfully created.' }
        format.json { render :show, status: :created, location: @configattribmaster }
      else
        format.html { render :new }
        format.json { render json: @configattribmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configattribmasters/1
  # PATCH/PUT /configattribmasters/1.json
  def update
    respond_to do |format|
      if @configattribmaster.update(configattribmaster_params)
        format.html { redirect_to @configattribmaster, notice: 'Configattribmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @configattribmaster }
      else
        format.html { render :edit }
        format.json { render json: @configattribmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configattribmasters/1
  # DELETE /configattribmasters/1.json
  def destroy
    @configattribmaster.destroy
    respond_to do |format|
      format.html { redirect_to configattribmasters_url, notice: 'Configattribmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configattribmaster
      @configattribmaster = Configattribmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configattribmaster_params
      params.require(:configattribmaster).permit(:configattrib_id, :log_time, :param1, :param2, :notified)
    end
end
