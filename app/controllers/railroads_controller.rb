class RailroadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_railroad, only: [:show, :edit, :update, :destroy]

  # GET /railroads
  # GET /railroads.json
  def index
    @railroads = Railroad.all
  end

  # GET /railroads/1
  # GET /railroads/1.json
  def show
  end

  # GET /railroads/new
  def new
    @railroad = Railroad.new
  end

  # GET /railroads/1/edit
  def edit
  end

  # POST /railroads
  # POST /railroads.json
  def create
    @railroad = Railroad.new(railroad_params)

    respond_to do |format|
      if @railroad.save
        format.html { redirect_to @railroad, notice: 'Railroad was successfully created.' }
        format.json { render :show, status: :created, location: @railroad }
      else
        format.html { render :new }
        format.json { render json: @railroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railroads/1
  # PATCH/PUT /railroads/1.json
  def update
    respond_to do |format|
      if @railroad.update(railroad_params)
        format.html { redirect_to @railroad, notice: 'Railroad was successfully updated.' }
        format.json { render :show, status: :ok, location: @railroad }
      else
        format.html { render :edit }
        format.json { render json: @railroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railroads/1
  # DELETE /railroads/1.json
  def destroy
    @railroad.destroy
    respond_to do |format|
      format.html { redirect_to railroads_url, notice: 'Railroad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railroad
      @railroad = Railroad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railroad_params
      params.require(:railroad).permit(:name, :notes, :User_id)
    end
end
