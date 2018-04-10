require 'rails_helper'

describe 'User can edit an existing property' do
  describe 'edit' do
    before(:each) do
      @user = FactoryBot.create(:user)
      login_as(@user, :scope => :user)

      @property = FactoryBot.create(:property)
    end

    it 'can edit a property' do
      visit edit_property_path(@property)

      fill_in 'property[name]', with: 'Salamandra States'
      click_on 'Save'

      expect(current_path).to eq("/properties/#{property.last.id}/apartments")
      expect(page).to have_content('Salamandra States')
      expect(page).to_not have_content('Greenwood')
    end
  end
end