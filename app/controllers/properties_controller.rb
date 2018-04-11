class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def create
    @property = Property.new(properties_params)
    @property.user_id = current_user.id

    if @property.save
      redirect_to @property, notice: "#{@property.name} was succesfully created"
    else
      render :new
    end
  end

  def show
    redirect_to property_apartments_path(@property)
  end

  def update
    if @property.update(properties_params)
      redirect_to property_path(@property), notice: "Your #{@property.name} has been updated successfyully"

    else
      render :edit
    end
  end

  def destroy
    @property.delete
    redirect_to properties_path, notice: "#{@property.name} was succesfully deleted"

  end
  private

  def set_property
    @property = Property.find(params[:id])
  end

  def properties_params
    params.require(:property).permit(:name)
  end
end

