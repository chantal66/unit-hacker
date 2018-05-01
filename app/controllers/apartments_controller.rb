class ApartmentsController < ApplicationController

  respond_to :html, :json
  before_action :set_property, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = @property.apartments
  end

  def new
    @apartment = Apartment.new
  end

  def show
  end

  def edit
  end

  def create
    @apartment = @property.apartments.new(apartment_params)
    if @apartment.save
      redirect_to property_apartment_path(@property, @apartment), notice: "Apartment #{@apartment.unit_number} succesfully created"
    else
      render :new
    end
  end

  def update
    @apartment.update_attributes(apartment_params)
    respond_with @apartment
  end

  def destroy
    if @apartment.delete
      redirect_to property_apartments_path, notice: "Apartment #{@apartment.unit_number} successfully deleted"
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
    params.require(:apartment).permit(:unit_number, :beds, :baths, :unit_location, :garage, :garage_number,
                                      :renovation_type, :floor_plan, :shaker_doors_qty, :shaker_doors_width, :shaker_doors_height,
                                      :shaker_doors_hinges, :shaker_doors_pulls, :slab_drawer_fronts_qty, :slab_drawer_fronts_width,
                                      :slab_drawer_fronts_height, :slab_drawer_fronts_knobs, :hardware_hinges, :hardware_pulls, :hardware_knobs)
  end
end


