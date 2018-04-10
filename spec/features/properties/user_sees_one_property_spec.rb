require 'rails_helper'

describe 'User sees one company' do
  it 'Show' do
    property = Property.create!(name: 'Greenwood Village')
    property.apartments.create!(unit_number: '101', baths: '2', beds: '2')

    visit property_path(property)

    expect(current_path).to eq(property_apartments_path(property))
  end
end