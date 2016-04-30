class ConfigattribdetailsController < ApplicationController
  before_action :set_configattribdetail, only: [:show, :edit, :update, :destroy]
  def index
    @configattribdetails = Configattribdetail.all
  end
  def show
    redirect_to configattribs_path
  end
  def new
    @configattribdetail = Configattribdetail.new
    @configattribdetail.configattrib_id = params[:id]
    @configattrib=Configattrib.find(params[:id])
  end

  # GET /configattribdetails/1/edit
  def edit
    configattrib_id = Configattribdetail.find(params[:id]).configattrib_id
    @configattrib = Configattrib.find(configattrib_id)

  end

  # POST /configattribdetails
  # POST /configattribdetails.json
  def create
    @configattribdetail = Configattribdetail.new(configattribdetail_params)
    @configattribdetail.configattrib_id=session[:configattrib_id]
    respond_to do |format|
      if @configattribdetail.save
        format.html { redirect_to @configattribdetail, notice: 'Configattribdetail was successfully created.' }
        format.json { render :show, status: :created, location: @configattribdetail }
      else
        format.html { render :new }
        format.json { render json: @configattribdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configattribdetails/1
  # PATCH/PUT /configattribdetails/1.json
  def update
    respond_to do |format|
      if @configattribdetail.update(configattribdetail_params)
        format.html { redirect_to @configattribdetail, notice: 'Configattribdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @configattribdetail }
      else
        format.html { render :edit }
        format.json { render json: @configattribdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configattribdetails/1
  # DELETE /configattribdetails/1.json
  def destroy
    @configattribdetail.destroy
    respond_to do |format|
      format.html { redirect_to configattribdetails_url, notice: 'Configattribdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configattribdetail
      @configattribdetail = Configattribdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configattribdetail_params
      params.require(:configattribdetail).permit(:configattrib_id, :log_time, :param1, :param2, :notified)
    end
end
