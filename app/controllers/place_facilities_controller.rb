class PlaceFacilitiesController < ApplicationController
  # def new
  #   @place = Place.find(params[:place_id])
  #   @place_facility = PlaceFacility.new
  #   authorize @place_facility
  # end

  # def create
  #   @place = Place.find(params[:place_id])
  #   @place_facility = PlaceFacility.new(place_facilities_params)
  #   @place_facility.place = @place
  #   authorize @place_facility
  #   if @place_facility.save
  #     redirect_to place_path(@place), notice: 'Facility was successfully created.'
  #   else
  #     redirect_to "places/show"
  #   end
  # end

  # def destroy
  #   @place_facility = PlaceFacility.find(params[:id])
  #   authorize @place_facility
  #   @place_facility.destroy
  #   redirect_to place_path(@place_facility.place)
  # end

  # private

  # def place_facilities_params
  #   params.require(:place_facility).permit(:facility_id)
  # end
end
