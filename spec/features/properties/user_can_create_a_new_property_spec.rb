require 'rails_helper'

describe 'creation' do
  describe 'new' do
    it 'has a link from index' do
      visit properties_path
      click_link 'New'
      
      expect(page.status_code).to eq(200)
    end

    it 'can create a new property' do
      visit new_property_path
      fill_in 'property[name]', with: 'Carrington'
      click_on 'Save'

      expect(current_path).to eq("/properties/#{Property.last.id}/apartments")
      expect(page).to have_content('Carrington')
      expect(Property.count).to eq(1)
    end
  end
end