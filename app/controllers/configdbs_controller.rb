class ConfigdbsController < ApplicationController
  before_action :set_configdb, only: [:show, :edit, :update, :destroy]

  # GET /configdbs
  # GET /configdbs.json
  def index
    @configdbs = Configdb.all
  end

  # GET /configdbs/1
  # GET /configdbs/1.json
  def show
    redirect_to configattribs_path
  end

  # GET /configdbs/new
  def new
    @configdb = Configdb.new
  end

  # GET /configdbs/1/edit
  def edit
  end

  # POST /configdbs
  # POST /configdbs.json
  def create
    @configdb = Configdb.new(configdb_params)

    respond_to do |format|
      if @configdb.save
        format.html { redirect_to @configdb, notice: 'Configdb was successfully created.' }
        format.json { render :show, status: :created, location: @configdb }
      else
        format.html { render :new }
        format.json { render json: @configdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configdbs/1
  # PATCH/PUT /configdbs/1.json
  def update
    respond_to do |format|
      if @configdb.update(configdb_params)
        format.html { redirect_to @configdb, notice: 'Configdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @configdb }
      else
        format.html { render :edit }
        format.json { render json: @configdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configdbs/1
  # DELETE /configdbs/1.json
  def destroy
    @configdb.destroy
    respond_to do |format|
      format.html { redirect_to configdbs_url, notice: 'Configdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configdb
      @configdb = Configdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configdb_params
      params.require(:configdb).permit(:location, :username, :password, :monitor)
    end
end
