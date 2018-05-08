require 'rails_helper'

describe 'Show' do
  it 'can see materials in show page' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    property = FactoryBot.create(:property)
    apartment = FactoryBot.create(:apartment)
    aspen_materials = AspenMaterial.create(qty: 1, rec: 0, item: 'ProFlo', apartment_id: apartment.id)

    visit property_apartment_path(property, apartment)

    expect(page).to have_content('Aspen Materials')
    expect(page).to have_content(aspen_materials.qty)
    expect(page).to have_content(aspen_materials.rec)
    expect(page).to have_content(aspen_materials.item)
  end
end