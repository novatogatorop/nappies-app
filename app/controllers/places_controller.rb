class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]


  def index
    @places = policy_scope(Place)
    @places = Place.all
    query = params[:query]
    results = query.present? ? Place.global_search(query) : Place.all

    if params[:facility].blank? || params[:facility] == 'Select Facility'
      @places = results
    else
      # 'High Chair' -> 'High_Chair' -> 'high_chair' -> :high_chair
      symbol = params[:facility].gsub(/ /, '_').downcase!.to_sym
      # @places = results.where(:high_chair => true)
      @places = results.where(symbol => true)
    end

    if @places.present?
      @places
    else
      @places = Place.geocoded
      @response = "Sorry, we couldn't find anything 😓"
    end

    # @geo_places = @places.geocoded
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

  def show
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
    # @place_facility = PlaceFacility.new
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
    params.require(:place).permit(:name, :address, :user_id, :type_id, :changing_table, :toy, :high_chair, :play_area, :photo1, :photo2, :photo3, :photo4, :photo5)
  end
end
