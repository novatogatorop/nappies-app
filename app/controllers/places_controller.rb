class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, except: [ :new, :create, :edit, :update, :destroy ]
  before_action :set_place, only: [ :show, :edit, :update, :destroy ]

  def index
    @places = policy_scope(Place)
    @places = Place.all
    @types = Type.order(:name)

    @places = Place.global_search(params[:search][:query]) if params[:search] && params[:search][:query].present?
    @places = @places.joins(:type).where(types: { id: params[:search][:type] }) if params[:search] && params[:search][:type].present?
    @places = @places.filter_by_changing_table if params[:search] && params[:search][:changing_table] == 'true'
    @places = @places.filter_by_high_chair if params[:search] && params[:search][:high_chair] == 'true'
    @places = @places.filter_by_toy if params[:search] && params[:search][:toy] == 'true'
    @places = @places.filter_by_play_area if params[:search] && params[:search][:play_area ] == 'true'

    if @places.present?
      @places
    else
      @places = Place.geocoded
      @response = "No results for found."
      # @response = "No results for '#{params[:search][:query]}'."
    end

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
