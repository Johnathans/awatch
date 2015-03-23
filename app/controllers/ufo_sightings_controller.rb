class UfoSightingsController < ApplicationController
  before_action :set_ufo_sighting, only: [:show, :edit, :update, :destroy]

  # GET /ufo_sightings
  # GET /ufo_sightings.json
  def index
  if params[:search].present?
    @ufo_sightings = UfoSighting.near(params[:search], 50, :order => :distance)
  else
    @ufo_sightings = UfoSighting.all
  end
    @hash = Gmaps4rails.build_markers(@ufo_sightings) do |ufo_sighting, marker|
      marker.lat ufo_sighting.latitude
      marker.lng ufo_sighting.longitude
    end
  end

  # GET /ufo_sightings/1
  # GET /ufo_sightings/1.json
  def show
  end

  # GET /ufo_sightings/new
  def new
    @ufo_sighting = UfoSighting.new
  end

  # GET /ufo_sightings/1/edit
  def edit
  end

  # POST /ufo_sightings
  # POST /ufo_sightings.json
  def create
    @ufo_sighting = UfoSighting.new(ufo_sighting_params)

    respond_to do |format|
      if @ufo_sighting.save
        format.html { redirect_to @ufo_sighting, notice: 'Ufo sighting was successfully created.' }
        format.json { render :show, status: :created, location: @ufo_sighting }
      else
        format.html { render :new }
        format.json { render json: @ufo_sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ufo_sightings/1
  # PATCH/PUT /ufo_sightings/1.json
  def update
    respond_to do |format|
      if @ufo_sighting.update(ufo_sighting_params)
        format.html { redirect_to @ufo_sighting, notice: 'Ufo sighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @ufo_sighting }
      else
        format.html { render :edit }
        format.json { render json: @ufo_sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ufo_sightings/1
  # DELETE /ufo_sightings/1.json
  def destroy
    @ufo_sighting.destroy
    respond_to do |format|
      format.html { redirect_to ufo_sightings_url, notice: 'Ufo sighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ufo_sighting
      @ufo_sighting = UfoSighting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ufo_sighting_params
      params.require(:ufo_sighting).permit(:address, :craft, :details, :latitude, :longitude)
    end
end
