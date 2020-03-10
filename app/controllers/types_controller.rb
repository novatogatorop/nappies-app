class TypesController < ApplicationController
  before_action :set_type, only: [:edit, :update, :destroy]

  def index
    @types = policy_scope(Type)
  end

  def new
    @type = Type.new
    authorize @type
  end

  def create
    @type = Type.new(type_params)
    authorize @type
    if @type.save
      redirect_to types_path, notice: 'Type was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @type.update(type_params)
    if @type.save
      redirect_to types_path, notice: 'Type was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @type.destroy
    redirect_to types_path(@type)
  end

  private

  def set_type
    @type = Type.find(params[:id])
    authorize @type
  end

  def type_params
    params.require(:type).permit(:name)
  end
end
