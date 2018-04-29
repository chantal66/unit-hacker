require 'rails_helper'

describe  'New' do
  it  'user can create a new apartment' do
    @user = FactoryBot.create(:user)
    login_as(@user, :scope => :user)
    @property = FactoryBot.create(:property)
    @apartment = FactoryBot.create(:apartment)

    visit property_apartments_path(@property)

    click_on 'New'

    expect(current_path).to eq(new_property_apartment_path(@property))

    fill_in 'apartment[unit_number]', with: '102'
    fill_in 'apartment[beds]', with: '2'
    fill_in 'apartment[baths]', with: '1'
    fill_in 'apartment[unit_location]', with: 'garden'
    fill_in 'apartment[garage]', with: 'yes'
    fill_in 'apartment[garage_number]', with: '10'
    fill_in 'apartment[renovation_type]', with: 'full'
    click_button 'Save'

    expect(current_path).to eq("/properties/#{@property.id}/apartments/#{Apartment.last.id}")
    expect(page).to have_content('102')
    expect(page).to have_content('2')
    expect(page).to have_content('1')
    expect(page).to have_content('garden')
    expect(page).to have_content('true')
    expect(page).to have_content('10')
    expect(page).to have_content('full')
  end
end

