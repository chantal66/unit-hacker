require 'rails_helper'

describe 'Delete' do
  it 'can delete an apartment' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    property = FactoryBot.create(:property)
    apartment = FactoryBot.create(:apartment)

    visit property_apartments_path(property)

    click_link("delete_apartment_#{apartment.id}")

    expect(page.status_code).to eq(200)
    expect(page).to have_content("Apartment #{apartment.id} successfully deleted")
  end
end