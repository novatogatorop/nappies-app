class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]


  def index
    @places = policy_scope(Place)
    # RANSACK
    # @search = Place.search(params[:q])
    # @places = @search.result

    @places = Place.all
    @places = @places.search_by(params[:search]) unless params[:search].blank?
    @places = @places.diaper unless params[:diaper].blank?


    @geo_places = @places.geocoded
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
        image_url: helpers.asset_url('map-pin-nappies-border-small.png')
      }
    end
  end




  # def index
  #   @places = policy_scope(Place)
  #   @types_all = Type.pluck(:id)
  #   @types = []
  #   @text_search = params[:search]

  #   if params[:type].present?
  #     @types = params[:type].empty? ? @types_all : params[:type]
  #   else
  #     @types = @types_all
  #   end

  #   if params[:diaper].present?
  #   end

  #   if @text_search.present?
  #     @places = Place.global_search(params[:search]).where(type: @types).where(diaper: params[:diaper])
  #   else
  #     @places = Place.all
  #     @result = "No Result"
  #   end

  #   @geo_places = @places.geocoded
  #   @markers = @places.map do |place|
  #     {
  #       lat: place.latitude,
  #       lng: place.longitude,
  #       infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
  #       # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
  #       image_url: helpers.asset_url('map-pin-nappies-border-small.png')
  #     }
  #   end
  # end

  def show
    @facility = Facility.new
    @place_facility = PlaceFacility.new
    @markers = Array.new
    @markers << { lat: @place.latitude,
                  lng: @place.longitude,
                  image_url: helpers.asset_url('map-pin-nappies-border-small.png')
                 }
  end

  def new
    @place = Place.new
    authorize @place
  end

  def create
    @place = Place.new(place_params)
    @place_facility = PlaceFacility.new
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
    params.require(:place).permit(:name, :address, :user_id, :type_id, :diaper, :toy, :high_chair, :play_area, :photo1, :photo2, :photo3, :photo4, :photo5)
  end
end
