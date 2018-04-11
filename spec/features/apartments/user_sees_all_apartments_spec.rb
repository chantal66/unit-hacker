require 'rails_helper'

describe 'User sees all apartments' do
  describe 'Index' do
    before  do
      @user = FactoryBot.create(:user)
      login_as(@user, :scope => :user)
    end
    it 'sees all apartments for a specific property' do
      property = FactoryBot.create(:property)
      property.apartments.create!(unit_number: '101', beds: '2', baths: '3', property_id: property.id)
      property.apartments.create!(unit_number: '201', beds: '2', baths: '3', property_id: property.id)

      visit property_path(property)

      expect(page).to have_content('101')
      expect(page).to have_content('201')
    end
  end
end