class ApartmentsController < ApplicationController

  before_action :set_property, only: [:index]

  def index
    @apartments = @property.apartments
  end
end


private

def set_property
  @property = Property.find(params[:property_id])
end