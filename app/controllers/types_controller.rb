class TypesController < ApplicationController
  before_action :set_type, only: [:edit, :update]
  def new
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to places_path, notice: 'Type was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @type.update(type_params)
    if @type.save
      redirect_to places_path, notice: 'Type was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_type
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:name)
  end
end
