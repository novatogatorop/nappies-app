class FacilitiesController < ApplicationController
  before_action :set_facility, only: [:edit, :update, :destroy]

  def index
    @facilities = policy_scope(Facility)
  end

  def new
    @facility = Facility.new
    authorize @facility
  end

  def create
    @facility = Facility.new(facility_params)
    authorize @facility
    if @facility.save
      redirect_to places_path, notice: 'Facility was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @facility.update(facility_params)
    if @facility.save
      redirect_to places_path, notice: 'Facility was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @facility.destroy
    redirect_to places_path, notice: 'Facility was successfully removed.'
  end

  private

  def set_facility
    @facility = Facility.find(params[:id])
    authorize @facility
  end

  def facility_params
    params.require(:facility).permit(:name, :photo)
  end
end
