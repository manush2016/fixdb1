class ConfigattribsController < ApplicationController
  before_action :set_configattrib, only: [:show, :edit, :update, :destroy]

  # GET /configattribs
  # GET /configattribs.json
  def index
    @configdbs = Configdb.all
    @configattribs = Configattrib.all
    @configattribmasters = Configattribmaster.all
  end

  # GET /configattribs/1
  # GET /configattribs/1.json
  def show
    redirect_to configattribs_path
  end

  # GET /configattribs/new
  def new
    @configattrib = Configattrib.new
    @configattrib.configdb_id = params[:id]
    @configdb = Configdb.find(params[:id])
  end

  # GET /configattribs/1/edit
  def edit
    configdb_id = Configattrib.find(params[:id]).configdb_id
    @configdb = Configdb.find(configdb_id)
  end

  # POST /configattribs
  # POST /configattribs.json
  def create
    @configattrib = Configattrib.new(configattrib_params)
    @configattrib.configdb_id=session[:configdb_id]
    respond_to do |format|
      if @configattrib.save
        format.html { redirect_to @configattrib, notice: 'Configattrib was successfully created.' }
        format.json { render :show, status: :created, location: @configattrib }
      else
        format.html { render :new }
        format.json { render json: @configattrib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configattribs/1
  # PATCH/PUT /configattribs/1.json
  def update
    respond_to do |format|
      if @configattrib.update(configattrib_params)
        format.html { redirect_to @configattrib, notice: 'Configattrib was successfully updated.' }
        format.json { render :show, status: :ok, location: @configattrib }
      else
        format.html { render :edit }
        format.json { render json: @configattrib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configattribs/1
  # DELETE /configattribs/1.json
  def destroy
    @configattrib.destroy
    respond_to do |format|
      format.html { redirect_to configattribs_url, notice: 'Configattrib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configattrib
      @configattrib = Configattrib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configattrib_params
      params.require(:configattrib).permit(:configdb_id, :attribute_name, :monitor, :th_warning, :th_critical, :command, :command_operand, :command_operator, :command_file_type)
    end
end
