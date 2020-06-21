class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :new, :create, :edit, :update, :destroy ]
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]


  def index

    @places = policy_scope(Place)
    @places = Place.all
    query = params[:query]
    @places = query.present? ? Place.global_search(query) : Place.all

    if params[:facility].blank? || params[:facility] == 'Select Facility'
      @places
    else
      # 'High Chair' -> 'High_Chair' -> 'high_chair' -> :high_chair
      symbol = params[:facility].gsub(/ /, '_').downcase!.to_sym
      # @places = results.where(:high_chair => true)
      @places = @places.where(symbol => true)
    end

    if params[:type].blank? || params[:type] == 'Select Type'
      @places
    else
      @places = @places.
    end

    if @places.present?
      @places
    else
      @places = Place.geocoded
      @response = "No results for '#{query}'."
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

  def filter_by_changing_table
    @places = Place.filter_by_changing_table
    skip_authorization

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
        image_url: helpers.asset_url('map-pin-nappies-border-small.png')
      }
    end

    render 'places/index'
  end

  def filter_by_high_chair
    @places = Place.filter_by_high_chair
    skip_authorization

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
        image_url: helpers.asset_url('map-pin-nappies-border-small.png')
      }
    end

    render 'places/index'
  end

  def filter_by_toy
    @places = Place.filter_by_toy
    skip_authorization

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
        image_url: helpers.asset_url('map-pin-nappies-border-small.png')
      }
    end

    render 'places/index'
  end

  def filter_by_play_area
    @places = Place.filter_by_play_area
    skip_authorization

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infoWindow: render_to_string(partial: "map_box", locals: { place: place }),
        # infoWindow: { content: render_to_string(partial: "/places/map_box", locals: { place: place }) },
        image_url: helpers.asset_url('map-pin-nappies-border-small.png')
      }
    end

    render 'places/index'
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
