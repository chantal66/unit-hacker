require 'rails_helper'

describe  'Edit' do
  it  'user can create a edit an apartment' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    property = FactoryBot.create(:property)
    apartment = FactoryBot.create(:apartment)


    visit edit_property_apartment_path(property, apartment)

    fill_in 'apartment[unit_number]', with: '102'
    fill_in 'apartment[beds]', with: '2'
    fill_in 'apartment[baths]', with: '2'
    select 'Ground', from: 'apartment[unit_location]'
    select 'no', from: 'apartment[garage]'
    select  'Partial', from:  'apartment[renovation_type]'
    click_button 'Save'

    expect(current_path).to eq("/properties/#{property.id}/apartments/#{Apartment.last.id}")
    expect(page).to have_content('102')
    expect(page).to have_content('2')
    expect(page).to have_content('2')
    expect(page).to have_content('Ground')
    expect(page).to have_content('Partial')
  end
end

