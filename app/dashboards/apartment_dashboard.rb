require "administrate/base_dashboard"

class ApartmentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    property: Field::BelongsTo,
    id: Field::Number,
    unit_number: Field::Number,
    beds: Field::Number,
    baths: Field::Number,
    unit_location: Field::String,
    garage: Field::Boolean,
    garage_number: Field::Number,
    renovation_type: Field::String,
    floor_plan: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :property,
    :id,
    :unit_number,
    :beds,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :property,
    :id,
    :unit_number,
    :beds,
    :baths,
    :unit_location,
    :garage,
    :garage_number,
    :renovation_type,
    :floor_plan,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :property,
    :unit_number,
    :beds,
    :baths,
    :unit_location,
    :garage,
    :garage_number,
    :renovation_type,
    :floor_plan,
  ].freeze

  # Overwrite this method to customize how apartments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(apartment)
  #   "Apartment ##{apartment.id}"
  # end
end
