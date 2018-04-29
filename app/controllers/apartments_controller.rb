class ApartmentsController < ApplicationController

  before_action :set_property, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_apartment, only: [:show]

  def index
    @apartments = @property.apartments
  end

  def new
    @apartment = Apartment.new
  end

  def show
  end

  def create
    @apartment = @property.apartments.new(apartment_params)
    if @apartment.save
      redirect_to property_apartment_path(@property, @apartment), notice: "Apartment #{@apartment.unit_number} succesfully created"
    else
      render :new
    end
  end

  private

  def set_property
    @property = Property.find(params[:property_id])
  end
  
  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:unit_number, :beds, :baths, :unit_location, :garage, :garage_number, :renovation_type)
  end
end


