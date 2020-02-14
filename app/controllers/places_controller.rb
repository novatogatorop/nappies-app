class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]

  def index
    @places = policy_scope(Place)
    if params[:query].present?
      @places = Place.global_search(params[:query])
    else
      @places = Place.all
    end
    @geo_places = @places.geocoded
    @markers = @geo_places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { place: place })
      }
    end
  end

  def show
    @markers = Array.new
    @markers << { lat: @place.latitude, lng: @place.longitude }
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    authorize @place
    if @place.save
      redirect_to @place
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to @place
    else
      render :edit
    end
  end

  def destroy
    @place.destroy
    redirect_to places_url
  end

  private

  def set_place
    @place = Place.find(params[:id])
    authorize @place
  end

  def place_params
    params.require(:place).permit(:name, :address, :user_id, :photo1, :photo2, :photo3, :photo4, :photo5)
  end
end
