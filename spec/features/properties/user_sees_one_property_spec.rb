require 'rails_helper'

describe 'User sees one company' do
  before do
    @user = FactoryBot.create(:user)
    login_as(@user, :scope => :user)
  end

  it 'Show' do
    property = Property.create!(name: 'Greenwood Village', user_id: @user.id)
    property.apartments.create!(unit_number: '101', baths: '2', beds: '2')

    visit property_path(property)

    expect(current_path).to eq("/properties/#{property.id}/apartments")
    expect(page).to have_content('Greenwood Village')
  end
end